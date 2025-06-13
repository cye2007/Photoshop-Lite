public class Layer extends Lockable {
  private String name;
  
  private float opacity;
  private PGraphics graphics;
  
  public Layer(int num) {
    super();
    name = "Layer " + num;
    graphics = createGraphics(canvasScreenWidth, canvasScreenHeight);
    graphics.beginDraw();
    graphics.endDraw();
    opacity = 1;
  }
  
  public Layer(String name, PImage uploadedImage) {
    super();
    this.name = name;
    graphics = createGraphics(canvasScreenWidth, canvasScreenHeight);
    graphics.beginDraw();
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
    Layer duplicate = new Layer("Copy of " + getName(), graphics);
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
