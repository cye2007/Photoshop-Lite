public class Layer extends Lockable {
  private String name;
  private float opacity;
  private PGraphics graphics;
  
  public Layer() {
    name = "Untitled";
    graphics = createGraphics(canvasWidth, canvasHeight);
    graphics.beginDraw();
    graphics.background(255);
    graphics.endDraw();
    opacity = 1;
  }
  
  public String getName() {
    return name;
  }
  
  public PGraphics graphics() {
    return graphics;
  }
  
  public float getOpacity() {
    return opacity;
  }
  
  public void setName(String name) {
    this.name = name;
  }
  
  public void setOpacity(float opacity) {
    this.opacity = opacity;
  }
  
  public Layer duplicate() {
    Layer duplicate = new Layer();
    return duplicate;
  }
}
