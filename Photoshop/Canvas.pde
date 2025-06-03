public class Canvas extends Lockable {
  private int canvasWidth;
  private int canvasHeight;
  private float zoom;
  private ArrayList<Layer> layers;
  
  public Canvas() {
    canvasWidth = 1080;
    canvasHeight = 860;
    zoom = 1;
    layers = new ArrayList<Layer>();
    layers.add(new Layer());
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
    return layers.remove(index);
  }
  
  public void duplicateLayer(int index) {
    layers.add(layers.get(index).duplicate());
  }
  
  public void reorderLayers(int index1, int index2) {
    layers.add(Math.max(index1, index2), layers.set(Math.min(index1, index2), layers.remove(Math.max(index1, index2))));
  }
  
  public void saveCanvas() {
    PGraphics file = createGraphics(canvasWidth, canvasHeight);
    file.beginDraw();
    for (Layer layer : layers) {
      tint(255, layer.getOpacity() * 255);
      file.image(layer.graphics(), 0, 0);
    }
    file.endDraw();
    file.save("photo.png");
  }
}
