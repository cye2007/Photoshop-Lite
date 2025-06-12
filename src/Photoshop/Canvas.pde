public class Canvas extends Lockable {
  private int canvasWidth;
  private int canvasHeight;
  private float zoom;
  private ArrayList<Layer> layers;
  
  private PGraphics graphics;
  
  public Canvas() {
    canvasWidth = 1080;
    canvasHeight = 860;
    zoom = 1;
    layers = new ArrayList<Layer>();
    layers.add(new Layer());
    graphics = createGraphics(canvasWidth, canvasHeight);
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
    layers.add(index, new Layer());
  }
  
  public Layer removeLayer(int index) {
    if (layers.size() <= 1) layers.add(new Layer());
    return layers.remove(index);
  }
  
  public void duplicateLayer(int index) {
    layers.add(layers.get(index).duplicate());
  }
  
  public void reorderLayers(int index1, int index2) {
    layers.add(Math.max(index1, index2), layers.set(Math.min(index1, index2), layers.remove(Math.max(index1, index2))));
  }
  
  public void updateCanvas() {
    graphics.beginDraw();
    graphics.imageMode(CENTER);
    graphics.translate(-mouseX, -mouseY);
    graphics.scale(zoom);
    graphics.translate(mouseX, mouseY);
    graphics.imageMode(CORNER);
    for (Layer layer : canvas.layers) {
      graphics.tint(255, layer.getOpacity() * 255);
      graphics.image(layer.graphics(), 0, 0);
    }
    graphics.endDraw();
  }
  
  public void saveCanvas() {
    graphics.save("photo.png");
  }
}
