import java.util.LinkedList;
import g4p_controls.*;

//   G4P.selectColor();

final int screenWidth = 1440;
final int screenHeight = 760;
int canvasWidth = 1040;
int canvasHeight = 700;
PVector centerOffset = new PVector(620, 410);
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

PGraphics copy;

void setup() {
  windowMove(0, 0);
  surface.setSize(screenWidth, screenHeight);
  imageMode(CENTER);
  createGUI();
  filePath = null;
  canvas = new Canvas();
  layerIndex = 0;
  currentLayer = canvas.getLayer(layerIndex);
  currentTool = null;
  currentColor = color(0);
  //displayColor = currentColor;
  //zoomLevel.setTextAlign(GAlign.CENTER, GAlign.CENTER);
}

void draw() {
  canvas.updateCanvas();
  image(canvas.graphics(), centerOffset.x, centerOffset.y, canvasWidth, canvasHeight);
}

void setLayerProperities() {
  layerOpacity.setValue(currentLayer.getOpacity());
  //layerWidth.setValue(canvas.getLayer(layerIndex).getWidth());
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
