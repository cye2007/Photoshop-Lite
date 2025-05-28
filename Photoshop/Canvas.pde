public class Canvas extends Lockable {
  private int canvasWidth;
  private int canvasHeight;
  private ArrayList<PGraphics> layers;
  
  public Canvas() {
    canvasWidth = width;
    canvasHeight = height;
    layers = new ArrayList<PGraphics>();
    PGraphics defaultLayer = createGraphics(canvasWidth, canvasHeight);
    defaultLayer.beginDraw();
    defaultLayer.background(255);
    defaultLayer.endDraw();
    layers.add(defaultLayer);
  }
  
  public int getWidth() {
    return canvasWidth;
  }
  
  public int getHeight() {
    return canvasHeight;
  }
  
  public void setWidth(int canvasWidth) {
    this.canvasWidth = canvasWidth;
  }
  
  public void setHeight(int canvasHeight) {
    this.canvasHeight = canvasHeight;
  }
  
  public int countLayers() {
    return layers.size();
  }
  
  public PGraphics getLayer(int index) {
    return layers.get(index);
  }
  
  public void addLayer() {
    layers.add(createGraphics(canvasWidth, canvasHeight));
  }
  
  public PGraphics removeLayer(int index) {
    return layers.remove(index);
  }
}
