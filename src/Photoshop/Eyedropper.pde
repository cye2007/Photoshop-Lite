public class Eyedropper implements Tool {  
  @Override
  public void mousePressed() {
    foregroundColor = get(mouseX, mouseY);
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
