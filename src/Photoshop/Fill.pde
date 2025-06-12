public class Fill implements Tool {
  private color fillColor;
  
  public color getColor() {
    return fillColor;
  }
  
  public void setColor(color fillColor) {
    this.fillColor = fillColor;
  }
  
  @Override
  public void mousePressed() {
  }
  
  @Override
  public void mouseDragged() {
  }
  
  @Override
  public void mouseReleased() {
    currentLayer.graphics().beginDraw();
    currentLayer.graphics().background(fillColor);
    currentLayer.graphics().endDraw();
  }
  
  @Override
  public void mouseWheel(MouseEvent event) {
  }
}
