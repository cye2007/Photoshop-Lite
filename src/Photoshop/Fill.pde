public class Fill implements Tool {
  @Override
  public void mousePressed() {
  }
  
  @Override
  public void mouseDragged() {
  }
  
  @Override
  public void mouseReleased() {
    currentLayer.graphics().beginDraw();
    currentLayer.graphics().background(foregroundColor);
    currentLayer.graphics().endDraw();
  }
  
  @Override
  public void mouseWheel(MouseEvent event) {
  }
}
