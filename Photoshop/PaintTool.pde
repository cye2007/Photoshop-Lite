public abstract class PaintTool extends Tool {
  private PGraphics layer;
  private int size; // Consider changing to double in the future
  private double hardness;
  private double opacity;
  private color strokeColor;
  
  public PaintTool(PGraphics layer, double hardness, color strokeColor) {
    this.layer = layer;
    size = 10;
    this.hardness = hardness;
    opacity = 1;
    this.strokeColor = strokeColor;
  }
  
  public PGraphics currentLayer() {
    return layer;
  }
  
  public int getSize() {
    return size;
  }
  
  public double getOpacity() {
    return opacity;
  }
  
  public color getColor() {
    return strokeColor;
  }
  
  public double getHardness() {
    return hardness;
  }
  
  public void changeLayer(PGraphics layer) {
    this.layer = layer;
  }
  
  public void setSize(int size) {
    this.size = size;
  }
  
  public void setHardness(double hardness) {
    this.hardness = hardness;
  }
  
  public void setOpacity(double opacity) {
    this.opacity = opacity;
  }
  
  public void setColor(color strokeColor) {
    this.strokeColor = strokeColor;
  }
  
  @Override
  public void mousePressed() {
  }
  
  @Override
  public void mouseDragged() {
    layer.beginDraw();
    layer.stroke(0);
    layer.strokeWeight(10);
    layer.line(mouseX, mouseY, pmouseX, pmouseY);
    layer.endDraw();
  }
  
  @Override
  public void mouseReleased() {
  }
}
