public class Erase extends PaintTool {
  public Erase() {
    super(1);
  }
  
  @Override
  public void mouseDragged() {
    if (!currentLayer.isLocked()) {
      currentLayer.graphics().beginDraw();
      currentLayer.graphics().stroke(255);
      currentLayer.graphics().strokeWeight(10);
      currentLayer.graphics().line(pmouseX - cornerOffset.x, pmouseY - cornerOffset.y, mouseX - cornerOffset.x, mouseY - cornerOffset.y);
      currentLayer.graphics().endDraw();
    }
  }
}
