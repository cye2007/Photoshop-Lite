public class ColorPicker implements Tool {
  private color selectedColor;
  
  @Override
  public void mousePressed() {
    selectedColor = get(mouseX, mouseY);
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
