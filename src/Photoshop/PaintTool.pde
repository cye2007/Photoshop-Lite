public abstract class PaintTool implements Tool {
  private int size; // Consider changing to double in the future
  private double hardness;
  private double opacity;
  
  public PaintTool(double hardness) {
    size = 10;
    this.hardness = hardness;
    opacity = 1;
  }
  
  public int getSize() {
    return size;
  }
  
  public double getOpacity() {
    return opacity;
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
  
  @Override
  public void mousePressed() {
  }
  
  @Override
  public void mouseDragged() {
    currentLayer.graphics().beginDraw();
    currentLayer.graphics().stroke(foregroundColor);
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
