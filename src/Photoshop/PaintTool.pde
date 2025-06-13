public abstract class PaintTool implements Tool {
  private int size;
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
    if (!currentLayer.isLocked()) {
      currentLayer.graphics().beginDraw();
      currentLayer.graphics().stroke(currentColor);
      currentLayer.graphics().strokeWeight(10);
      currentLayer.graphics().line(pmouseX - cornerOffset.x, pmouseY - cornerOffset.y, mouseX - cornerOffset.x, mouseY - cornerOffset.y);
      currentLayer.graphics().endDraw();
    }
  }
  
  @Override
  public void mouseReleased() {
  }
  
  @Override
  public void mouseWheel(MouseEvent event) {
  }
}
