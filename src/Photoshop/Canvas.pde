public class Canvas extends Lockable {
  private String name;
  private int canvasWidth;
  private int canvasHeight;
  private int layerNumber = 1;
  private float zoom;
  private ArrayList<Layer> layers;
  private PGraphics graphics;
  
  public Canvas() {
    name = "Untitled";
    canvasWidth = 1080;
    canvasHeight = 860;
    zoom = 1;
    layers = new ArrayList<Layer>();
    layers.add(new Layer(layerNumber));
    layerNumber++;
    graphics = createGraphics(canvasWidth, canvasHeight);
    graphics.imageMode(CORNER);
  }
  
  public Canvas(String filePath) {
    try {
      JSONObject metadata = loadJSONObject(filePath + "/canvasMetadata.json");
      JSONObject canvasData = metadata.getJSONObject("canvas");
      name = canvasData.getString("name");
      canvasWidth = canvasData.getInt("canvasWidth");
      canvasHeight = canvasData.getInt("canvasHeight");
      layerNumber = canvasData.getInt("layerNumber");
      layers = new ArrayList<Layer>();
      JSONArray layersData = metadata.getJSONArray("layers");
      for (int i = 0; i < layersData.size(); i++) {
        JSONObject layerData = layersData.getJSONObject(i);
        PImage layerImage = loadImage(filePath + "/canvasLayers/" + layerData.getString("name") + ".png");
        Layer layer = new Layer(layerData.getString("name"));
        layer.setOpacity(layerData.getFloat("opacity"));
        layer.graphics().beginDraw();
        layer.graphics().image(layerImage, 0, 0);
        layer.graphics().endDraw();
        layers.add(layer);
      }
      zoom = 1;
      graphics = createGraphics(canvasWidth, canvasHeight);
      graphics.imageMode(CORNER);
      updateCanvas();
    }
    catch (Exception e) {
      System.out.println("Failed to load canvas");
    }
  }
  
  public String getName() {
    return name;
  }
  
  public int getWidth() {
    return canvasWidth;
  }
  
  public int getHeight() {
    return canvasHeight;
  }
  
  public float getZoom() {
    return zoom;
  }
  
  public PGraphics graphics() {
    return graphics;
  }
  
  public void setName(String name) {
    this.name = name;
  }
  
  public void setWidth(int canvasWidth) {
    this.canvasWidth = canvasWidth;
  }
  
  public void setHeight(int canvasHeight) {
    this.canvasHeight = canvasHeight;
  }
  
  public void changeZoom(float change) {
    zoom = Math.max(.1, zoom + change);
  }
  
  public int size() {
    return layers.size();
  }
  
  public Layer getLayer(int index) {
    return layers.get(index);
  }
  
  public void addLayer(int index) {
    layers.add(index + 1, new Layer(layerNumber));
    layerNumber++;
  }
  
  public Layer removeLayer(int index) {
    if (layers.size() <= 1) layers.add(new Layer(layerNumber));
    layerNumber++;
    return layers.remove(index);
  }
  
  //public void duplicateLayer(int index) {
  //  layers.add(layers.get(index).duplicate());
  //}
  
  public void reorderLayers(int index1, int index2) {
    layers.add(Math.max(index1, index2), layers.set(Math.min(index1, index2), layers.remove(Math.max(index1, index2))));
  }
  
  public void undo() {
  }
  
  public void redo() {
  }
  
  public void updateCanvas() {
    graphics.beginDraw();
    graphics.translate(-mouseX, -mouseY);
    graphics.scale(zoom);
    graphics.translate(mouseX, mouseY);
    for (Layer layer : canvas.layers) {
      graphics.tint(255, layer.getOpacity() * 255);
      graphics.image(layer.graphics(), 0, 0);
    }
    graphics.endDraw();
  }
  
  public void saveCanvas(String filePath) {
    JSONObject metadata = new JSONObject();
    JSONObject canvasData = new JSONObject();
    canvasData.setString("name", name);
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
      layersData.append(layerData);
    }
    metadata.setJSONArray("layers", layersData);
    saveJSONObject(metadata, filePath + "/canvasMetadata.json");
  }
  
  public void exportCanvas(String filePath) {
    graphics.save(filePath + ".png");
  }
}
