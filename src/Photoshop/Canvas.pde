public class Canvas extends Lockable {
  private final int MAX_HISTORY_STATES = 20;
  
  private int canvasWidth;
  private int canvasHeight;
  private int layerNumber;
  private ArrayList<Layer> layers;
  private ArrayList<String> layerNames;
  private PGraphics graphics;
  
  public Canvas() {
    super();
    canvasWidth = canvasScreenWidth;
    canvasHeight = canvasScreenHeight;
    layerNumber = 1;
    layers = new ArrayList<Layer>();
    addLayer(0);
    layerNames = new ArrayList<String>();
    layerNames.add(layers.get(0).getName());
    //history = new LinkedList<ArrayList<Layer>>();
    //history.add(layers);
    graphics = createGraphics(canvasWidth, canvasHeight);
    graphics.beginDraw();
    graphics.background(255);
    graphics.endDraw();
    layerIndex = 0;
    updateCanvas();
  }
  
  public Canvas(String filePath) {
    super();
    try {
      JSONObject metadata = loadJSONObject(filePath + "/canvasMetadata.json");
      JSONObject canvasData = metadata.getJSONObject("canvas");
      canvasWidth = canvasData.getInt("canvasWidth");
      canvasHeight = canvasData.getInt("canvasHeight");
      layerNumber = canvasData.getInt("layerNumber");
      layers = new ArrayList<Layer>();
      layerNames = new ArrayList<String>();
      JSONArray layersData = metadata.getJSONArray("layers");
      for (int i = 0; i < layersData.size(); i++) {
        JSONObject layerData = layersData.getJSONObject(i);
        PImage layerImage = loadImage(filePath + "/canvasLayers/" + layerData.getString("name") + ".png");
        layerImage.resize(canvasScreenWidth, canvasScreenHeight);
        Layer layer = new Layer(layerData.getString("name"), layerImage);
        layer.setOpacity(layerData.getFloat("opacity"));
        if (layerData.getBoolean("isLocked")) layer.lock();
        layer.graphics().beginDraw();
        layer.graphics().image(layerImage, 0, 0);
        layer.graphics().endDraw();
        layers.add(layer);
      }
      graphics = createGraphics(canvasWidth, canvasHeight);
      layerIndex = layers.size() - 1;
      updateCanvas();
    }
    catch (Exception e) {
      System.out.println("Failed to load canvas");
    }
  }
  
  public int getWidth() {
    return canvasWidth;
  }
  
  public int getHeight() {
    return canvasHeight;
  }
  
  public PGraphics graphics() {
    return graphics;
  }
  
  public void setWidth(int canvasWidth) {
    this.canvasWidth = canvasWidth;
  }
  
  public void setHeight(int canvasHeight) {
    this.canvasHeight = canvasHeight;
  }
  
  public int size() {
    return layers.size();
  }
  
  public Layer getLayer(int index) {
    return layers.get(index);
  }
  
  public void addLayer(int index) {
    layers.add(index, new Layer(layerNumber));
    layerNumber++;
  }
  
  public void addLayer(int index, Layer layer) {
    layers.add(index, layer);
  }
  
  public Layer deleteLayer(int index) {
    if (layers.size() <= 1) addLayer(index);
    return layers.remove(index);
  }
  
  public void duplicateLayer(int index) {
    layers.add(layers.get(index).duplicate());
  }
  
  public void sendLayerForward(int index) {
    layers.add(Math.min(index + 1, layers.size()), layers.remove(index));
    
  }
  
  public void sendLayerBackward(int index) {
    layers.add(Math.max(index - 1, 0), layers.remove(index));
  }
  
  public void reorderLayers(int index1, int index2) {
    layers.add(Math.max(index1, index2), layers.set(Math.min(index1, index2), layers.remove(Math.max(index1, index2))));
  }
  
  public void updateCanvas() {
    graphics.beginDraw();
    graphics.background(255);
    for (Layer layer : layers) {
      graphics.tint(255, layer.getOpacity() * 255);
      graphics.image(layer.graphics(), 0, 0);
    }
    graphics.endDraw();
    layerNames.clear();
    for (Layer layer : layers) {
      layerNames.add(layer.getName());
    }
    layersList.setItems(layerNames, layerIndex);
  }
  
  public void saveCanvas(String filePath) {
    JSONObject metadata = new JSONObject();
    JSONObject canvasData = new JSONObject();
    canvasData.setInt("canvasWidth", canvasWidth);
    canvasData.setInt("canvasHeight", canvasHeight);
    canvasData.setInt("layerNumber", layerNumber);
    metadata.setJSONObject("canvas", canvasData);
    JSONArray layersData = new JSONArray();
    for (Layer layer : layers) {
      layer.graphics().save(filePath + "/canvasLayers/" + layer.getName() + ".png");
      JSONObject layerData = new JSONObject();
      layerData.setString("name", layer.getName());
      layerData.setFloat("opacity", layer.getOpacity());
      layerData.setBoolean("isLocked", layer.isLocked());
      layersData.append(layerData);
    }
    metadata.setJSONArray("layers", layersData);
    saveJSONObject(metadata, filePath + "/canvasMetadata.json");
  }
  
  public void exportCanvas(String filePath) {
    graphics.save(filePath + ".png");
  }
  
  @Override
  public void lock() {
    for (Layer layer : layers) {
      layer.lock();
    }
  }
  
  @Override
  public void unlock() {
    for (Layer layer : layers) {
      layer.unlock();
    }
  }
}
