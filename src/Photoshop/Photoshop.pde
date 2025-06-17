import g4p_controls.*;

final int screenWidth = 1440;
final int screenHeight = 760;
final int canvasScreenWidth = 1040;
final int canvasScreenHeight = 700;
PVector centerOffset = new PVector(600, 410);
PVector cornerOffset = new PVector(80, 60);

Tool currentTool = null;
Brush brush = new Brush();
Erase erase = new Erase();
Eyedropper eyedropper = new Eyedropper();
Fill fill = new Fill();

String filePath = null;
color currentColor = color(0);

Canvas canvas;
PShape colorDisplay;
int layerIndex;
Layer currentLayer;
PGraphics copiedLayer;

void setup() {
  windowMove(0, 0);
  surface.setSize(screenWidth, screenHeight);
  imageMode(CENTER);
  createGUI();
  canvas = new Canvas();
  setLayerProperties();
  fill(currentColor);
  colorDisplay = createShape(RECT, 0, 0, 80, 80);
  noFill();
  shape(colorDisplay, 0, 680);
}

void draw() {
  fill(currentColor);
  colorDisplay = createShape(RECT, 0, 0, 80, 80);
  noFill();
  shape(colorDisplay, 0, 680);
  canvas.updateCanvas();
  image(canvas.graphics(), centerOffset.x, centerOffset.y);
}

void setLayerProperties() {
  currentLayer = canvas.getLayer(layerIndex);
  layerName.setText(currentLayer.getName());
  if (currentLayer.isLocked()) lockStateLabel.setText("Locked");
  else lockStateLabel.setText("Unlocked");
  layerOpacity.setValue(currentLayer.getOpacity());
  layersList.setSelected(layerIndex);
}

void mousePressed() {
  if (isMouseOnColorSelector()) currentColor = G4P.selectColor();
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
  return mouseX >= 80 && mouseX <= 1120 && mouseY >= 60 && mouseY <= 760;
}

boolean isMouseOnColorSelector() {
  return mouseX >= 0 && mouseX <= 80 && mouseY >= 680 && mouseY <= 760;
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
    setLayerProperties();
  }
}

void imageSelected(File selection) {
  if (selection == null) System.out.println("Window was closed or user hit cancel.");
  else {
    System.out.println("User selected: " + selection.getAbsolutePath());
    try {
      Layer newLayer = new Layer(selection.getName(), loadImage(selection.getAbsolutePath()));
      canvas.addLayer(layerIndex + 1, newLayer);
      layerIndex++;
      currentLayer = canvas.getLayer(layerIndex);
    }
    catch (Exception e) {
      System.out.println("Image failed to load, the image format isn't supported, or the selected file is not an image");
    }
  }
}
