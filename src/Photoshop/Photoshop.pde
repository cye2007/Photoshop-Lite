import g4p_controls.*;

int canvasWidth = 1080;
int canvasHeight = 860;
PVector centerOffset = new PVector(620, 490);
PVector cornerOffset = new PVector(80, 60);

Zoom zoom = new Zoom();
Brush brush = new Brush();
Erase erase = new Erase();
Fill fill = new Fill();
Type type = new Type();

String filePath ;
Canvas canvas;
int layerIndex;
Layer currentLayer;
Tool currentTool;
color currentColor;

void setup() {
  windowMove(0, 0);
  surface.setSize(1440, 760);
  imageMode(CENTER);
  createGUI();
  filePath = null;
  canvas = new Canvas();
  layerIndex = 0;
  currentLayer = canvas.getLayer(layerIndex);
  layerOpacity.setValue(canvas.getLayer(layerIndex).getOpacity());
  currentTool = null;
  currentColor = color(0);
  //displayColor = currentColor;
  //zoomLevel.setTextAlign(GAlign.CENTER, GAlign.CENTER);
}

void draw() {
  background(255);
  //canvas.graphics().translate(-mouseX, -mouseY);
  //canvas.graphics().scale(canvas.getZoom());
  //canvas.graphics().translate(mouseX, mouseY);
  canvas.updateCanvas();
  image(canvas.graphics(), centerOffset.x, centerOffset.y);
  //for (Layer layer : canvas.layers) {
  //  layer.graphics().scale(canvas.getZoom());
  //  tint(255, layer.getOpacity() * 255);
  //  image(layer.graphics(), offset.x, offset.y);
  //}
}

void mousePressed() {
  if (currentTool != null && isMouseOnCanvas()) currentTool.mousePressed();
}

void mouseDragged() {
  if (currentTool != null && isMouseOnCanvas()) currentTool.mouseDragged();
}

void mouseReleased() {
  if (currentTool != null && isMouseOnCanvas()) currentTool.mouseReleased();
}

void mouseWheel(MouseEvent event) {
  if (currentTool != null && isMouseOnCanvas()) currentTool.mouseWheel(event);
}

boolean isMouseOnCanvas() {
  return mouseX >= 80 && mouseX <= 1160 && mouseY >= 60 && mouseY <= 920;
}

void saveLocationSelected(File selection) {
  if (selection == null) System.out.println("Window was closed or user hit cancel.");
  else {
    System.out.println("User selected: " + selection.getAbsolutePath());
    filePath = selection.getAbsolutePath();
    canvas.saveCanvas(filePath);
  }
}

void exportLocationSelected(File selection) {
  if (selection == null) System.out.println("Window was closed or user hit cancel.");
  else {
    System.out.println("User selected: " + selection.getAbsolutePath());
    canvas.exportCanvas(selection.getAbsolutePath());
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
