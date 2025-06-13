public class Layer extends Lockable {
  private String name;
  //private int layerWidth;
  //private int layerHeight;
  private float opacity;
  private PGraphics graphics;
  
  public Layer() {
    super();
    name = "Untitled Layer";
    graphics = createGraphics(canvasScreenWidth, canvasScreenHeight);
    graphics.beginDraw();
    graphics.background(255);
    graphics.endDraw();
    opacity = 1;
  }
  
  public Layer(String name) {
    super();
    this.name = name;
    graphics = createGraphics(canvasScreenWidth, canvasScreenHeight);
    graphics.beginDraw();
    graphics.background(255);
    graphics.endDraw();
    opacity = 1;
  }
  
  public Layer(PImage uploadedImage) {
    super();
    graphics = createGraphics(canvasScreenWidth, canvasScreenHeight);
    graphics.beginDraw();
    graphics.background(255);
    graphics.image(uploadedImage, 0, 0);
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
    Layer duplicate = new Layer("Copy of " + getName());
    duplicate.graphics().beginDraw();
    duplicate.graphics().image(graphics(), 0, 0);
    duplicate.graphics().endDraw();
    return duplicate;
  }
  
  public void copyLayer() {
    copiedLayer = createGraphics(canvasScreenWidth, canvasScreenHeight);
    copiedLayer.beginDraw();
    copiedLayer.image(graphics, 0, 0);
    copiedLayer.endDraw();
  }
  
  public void pasteLayer() {
    graphics.beginDraw();
    graphics.image(copiedLayer, 0, 0);
    graphics.endDraw();
  }
}
