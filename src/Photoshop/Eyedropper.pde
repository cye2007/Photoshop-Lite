public class Eyedropper implements Tool {  
  @Override
  public void mousePressed() {
    currentColor = get(mouseX, mouseY);
  }
  
  @Override
  public void mouseDragged() {
  }
  
  @Override
  public void mouseReleased() {
  }
  
  @Override
  public void mouseWheel(MouseEvent event) {
  }
}
