Canvas canvas;
Tool tool;

void settings() {
}

void setup() {
  windowResizable(true);
  surface.setSize(displayWidth, displayHeight);
  canvas = new Canvas();
  tool = new Brush(canvas.getLayer(0));
}

void draw() {
  for (PGraphics layer : canvas.layers) {
    image(layer, 0, 0);
  }
}

void mousePressed() {
  tool.mousePressed();
}

void mouseDragged() {
  tool.mouseDragged();
}

void mouseReleased() {
  tool.mouseReleased();
}
