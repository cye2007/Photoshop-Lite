public class Zoom implements Tool {
  
  @Override
  public void mousePressed() {
    
  }
  
  @Override
  public void mouseDragged() {
  }
  
  @Override
  public void mouseReleased() {
  }
  
  @Override
  public void mouseWheel(MouseEvent event) {
    canvas.changeZoom(event.getCount() * -.1);
  }
}
