public abstract class PaintTool implements Tool {
  private int size; // Consider changing to double in the future
  private double hardness;
  private double opacity;
  private color strokeColor;
  
  public PaintTool(double hardness, color strokeColor) {
    size = 10;
    this.hardness = hardness;
    opacity = 1;
    this.strokeColor = strokeColor;
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
    currentLayer.graphics().beginDraw();
    currentLayer.graphics().stroke(strokeColor);
    currentLayer.graphics().strokeWeight(10);
    currentLayer.graphics().line(pmouseX - offset.x, pmouseY - offset.y, mouseX - offset.x, mouseY - offset.y);
    currentLayer.graphics().endDraw();
  }
  
  @Override
  public void mouseReleased() {
  }
  
  @Override
  public void mouseWheel(MouseEvent event) {
  }
}
