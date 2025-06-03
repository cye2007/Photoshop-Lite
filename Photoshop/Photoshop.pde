import g4p_controls.*;

int canvasWidth = 1080;
int canvasHeight = 860;
PVector offset = new PVector(80, 60);

Zoom zoom = new Zoom();
Brush brush = new Brush();
Erase erase = new Erase();
Fill fill = new Fill();

Canvas canvas;
int layerIndex;
Layer currentLayer;
Tool currentTool = brush;

void setup() {
  windowResizable(true);
  windowMove(0, 0);
  surface.setSize(displayWidth, displayHeight);
  createGUI();
  //GCScheme.changePalette(8, panelColor);
  canvas = new Canvas();
  layerIndex = 0;
  currentLayer = canvas.getLayer(layerIndex);
  layerOpacity.setValue(canvas.getLayer(layerIndex).getOpacity());
}

void draw() {
  //canvas.graphics().translate(-mouseX, -mouseY);
  //canvas.graphics().scale(canvas.getZoom());
  //canvas.graphics().translate(mouseX, mouseY);
  for (Layer layer : canvas.layers) {
    tint(255, layer.getOpacity() * 255);
    image(layer.graphics(), offset.x, offset.y);
  }
}

void mousePressed() {
  currentTool.mousePressed();
}

void mouseDragged() {
  currentTool.mouseDragged();
}

void mouseReleased() {
  currentTool.mouseReleased();
}

void mouseWheel(MouseEvent event) {
  currentTool.mouseWheel(event);
}
