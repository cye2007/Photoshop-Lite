import g4p_controls.*;

int canvasWidth = 1080;
int canvasHeight = 860;
PVector offset = new PVector(620, 490);

Zoom zoom = new Zoom();
Brush brush = new Brush();
Erase erase = new Erase();
Fill fill = new Fill();

String filePath ;
Canvas canvas;
int layerIndex;
Layer currentLayer;
Tool currentTool = brush;
color foregroundColor;
color backgroundColor;

void setup() {
  windowResizable(true);
  windowMove(0, 0);
  surface.setSize(displayWidth, displayHeight);
  createGUI();
  filePath = null;
  canvas = new Canvas();
  layerIndex = 0;
  currentLayer = canvas.getLayer(layerIndex);
  layerOpacity.setValue(canvas.getLayer(layerIndex).getOpacity());
  zoomLevel.setTextAlign(GAlign.CENTER, GAlign.CENTER);

  imageMode(CENTER);
}

void draw() {
  background(255);
  //canvas.graphics().translate(-mouseX, -mouseY);
  //canvas.graphics().scale(canvas.getZoom());
  //canvas.graphics().translate(mouseX, mouseY);
  canvas.updateCanvas();
  image(canvas.graphics(), offset.x, offset.y);
  //for (Layer layer : canvas.layers) {
  //  layer.graphics().scale(canvas.getZoom());
  //  tint(255, layer.getOpacity() * 255);
  //  image(layer.graphics(), offset.x, offset.y);
  //}
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

void saveLocationSelected(File selection) {
  if (selection == null) System.out.println("Window was closed or user hit cancel.");
  else {
    System.out.println("User selected: " + selection.getAbsolutePath());
    filePath = selection.getAbsolutePath();
    canvas.saveCanvas(filePath);
  }
}

void loadFolderSelected(File selection) {
  if (selection == null) System.out.println("Window was closed or user hit cancel.");
  else {
    System.out.println("User selected: " + selection.getAbsolutePath());
    filePath = selection.getAbsolutePath();
    canvas = new Canvas(filePath);
  }
}
