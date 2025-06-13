public class Fill implements Tool {
  @Override
  public void mousePressed() {
  }
  
  @Override
  public void mouseDragged() {
  }
  
  @Override
  public void mouseReleased() {
    if (!currentLayer.isLocked()) {
      currentLayer.graphics().beginDraw();
      currentLayer.graphics().background(currentColor);
      currentLayer.graphics().endDraw();
    }
  }
  
  @Override
  public void mouseWheel(MouseEvent event) {
  }
}
