public class Fill extends Tool {
  private PGraphics layer;
  private color fillColor;
  
  public Fill(PGraphics layer, color fillColor) {
    this.layer = layer;
    this.fillColor = fillColor;
  }
  
  public PGraphics currentLayer() {
    return layer;
  }
  
  public color getColor() {
    return fillColor;
  }
  
  public void changeLayer(PGraphics layer) {
    this.layer = layer;
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
    layer.beginDraw();
    layer.background(fillColor);
    layer.endDraw();
  }
}
