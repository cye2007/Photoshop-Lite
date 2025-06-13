/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void topPanelPressed(GPanel source, GEvent event) { //_CODE_:topPanel:808074:
  println("panel1 - GPanel >> GEvent." + event + " @ " + millis());
} //_CODE_:topPanel:808074:

public void saveButtonPressed(GButton source, GEvent event) { //_CODE_:saveButton:873202:
  println("saveButton - GButton >> GEvent." + event + " @ " + millis());
  if (filePath == null) selectOutput("Select save location:", "saveLocationSelected");
  else canvas.saveCanvas(filePath);
} //_CODE_:saveButton:873202:

public void loadButtonPressed(GButton source, GEvent event) { //_CODE_:loadButton:635024:
  println("loadButton - GButton >> GEvent." + event + " @ " + millis());
  selectFolder("Select canvas to load", "loadFolderSelected");
} //_CODE_:loadButton:635024:

public void exportButtonPressed(GButton source, GEvent event) { //_CODE_:exportButton:864758:
  println("exportButton - GButton >> GEvent." + event + " @ " + millis());
  selectOutput("Select export location", "exportLocationSelected");
} //_CODE_:exportButton:864758:

public void undoButtonPressed(GButton source, GEvent event) { //_CODE_:undoButton:806436:
  println("undoButton - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:undoButton:806436:

public void redoButtonPressed(GButton source, GEvent event) { //_CODE_:redoButton:320430:
  println("redoButton - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:redoButton:320430:

public void toolPanelPressed(GPanel source, GEvent event) { //_CODE_:toolPanel:330345:
  println("toolPanel - GPanel >> GEvent." + event + " @ " + millis());
} //_CODE_:toolPanel:330345:

public void zoomButtonPressed(GButton source, GEvent event) { //_CODE_:zoomButton:746164:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  currentTool = zoom;
} //_CODE_:zoomButton:746164:

public void brushButtonPressed(GButton source, GEvent event) { //_CODE_:brushButton:681834:
  println("brushButton - GButton >> GEvent." + event + " @ " + millis());
  currentTool = brush;
} //_CODE_:brushButton:681834:

public void eraseButtonPressed(GButton source, GEvent event) { //_CODE_:eraseButton:768440:
  println("eraseButton - GButton >> GEvent." + event + " @ " + millis());
  currentTool = erase;
  G4P.selectColor();
} //_CODE_:eraseButton:768440:

public void fillButtonPressed(GButton source, GEvent event) { //_CODE_:fillButton:563538:
  println("fillButton - GButton >> GEvent." + event + " @ " + millis());
  currentTool = fill;
} //_CODE_:fillButton:563538:

public void eyedropperButtonPressed(GButton source, GEvent event) { //_CODE_:eyedropperButton:526776:
  println("colorPickerButton - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:eyedropperButton:526776:

public void typeButtonPressed(GButton source, GEvent event) { //_CODE_:typeButton:254522:
  println("typeButton - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:typeButton:254522:

public void LayersPanelPressed(GPanel source, GEvent event) { //_CODE_:LayersPanel:209891:
  println("panel1 - GPanel >> GEvent." + event + " @ " + millis());
} //_CODE_:LayersPanel:209891:

public void addLayerButtonPressed(GButton source, GEvent event) { //_CODE_:addLayerButton:215204:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  canvas.addLayer(layerIndex + 1);
  layerIndex++;
  currentLayer = canvas.getLayer(layerIndex);
} //_CODE_:addLayerButton:215204:

public void deleteLayerButtonPressed(GButton source, GEvent event) { //_CODE_:deleteLayerButton:679056:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  canvas.removeLayer(layerIndex);
  layerIndex = Math.min(layerIndex, canvas.size() - 1);
} //_CODE_:deleteLayerButton:679056:

public void layerOpacityChanged(GCustomSlider source, GEvent event) { //_CODE_:layerOpacity:549092:
  println("layerOpacity - GCustomSlider >> GEvent." + event + " @ " + millis());
  canvas.getLayer(layerIndex).setOpacity(layerOpacity.getValueF());
} //_CODE_:layerOpacity:549092:

public void layersListClicked(GDropList source, GEvent event) { //_CODE_:layersList:345746:
  println("layersList - GDropList >> GEvent." + event + " @ " + millis());
} //_CODE_:layersList:345746:

public void lockLayerButtonPressed(GButton source, GEvent event) { //_CODE_:lockLayerButton:333202:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:lockLayerButton:333202:

public void copyButtonPressed(GButton source, GEvent event) { //_CODE_:copyButton:732777:
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:copyButton:732777:

public void pasteButtonPressed(GButton source, GEvent event) { //_CODE_:pasteButton:888864:
  println("button3 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:pasteButton:888864:

public void duplicateLayerButtonPressed(GButton source, GEvent event) { //_CODE_:duplicateLayerButton:361188:
  println("button4 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:duplicateLayerButton:361188:

public void sendForwardButtonPressed(GButton source, GEvent event) { //_CODE_:sendForwardButton:726429:
  println("button5 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:sendForwardButton:726429:

public void sendBackwardButtonPressed(GButton source, GEvent event) { //_CODE_:sendBackwardButton:265970:
  println("button6 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:sendBackwardButton:265970:

public void propertiesPanelPressed(GPanel source, GEvent event) { //_CODE_:propertiesPanel:284779:
  println("propertiesPanel - GPanel >> GEvent." + event + " @ " + millis());
} //_CODE_:propertiesPanel:284779:

public void cwRotationButtonPressed(GButton source, GEvent event) { //_CODE_:cwRotationButton:947709:
  println("rotateClockwiseButton - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:cwRotationButton:947709:

public void ccwRotationButtonPressed(GButton source, GEvent event) { //_CODE_:ccwRotationButton:882110:
  println("rotateCounterclockwiseButton - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:ccwRotationButton:882110:

public void flipHorizontalButtonPressed(GButton source, GEvent event) { //_CODE_:flipHorizontalButton:991055:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:flipHorizontalButton:991055:

public void flipVerticalButtonPressed(GButton source, GEvent event) { //_CODE_:flipVerticalButton:625152:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:flipVerticalButton:625152:

public void textfield2_change1(GTextField source, GEvent event) { //_CODE_:layerWidth:819408:
  println("textfield2 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:layerWidth:819408:

public void layerHeightChanged(GTextField source, GEvent event) { //_CODE_:layerHeight:937925:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:layerHeight:937925:

public void layerXChanged(GTextField source, GEvent event) { //_CODE_:layerX:360095:
  println("textfield3 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:layerX:360095:

public void layerYChanged(GTextField source, GEvent event) { //_CODE_:layerY:608071:
  println("textfield4 - GTextField >> GEvent." + event + " @ " + millis());
} //_CODE_:layerY:608071:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  GButton.useRoundCorners(false);
  G4P.setSliderFont(".AppleSystemUIFont", G4P.PLAIN, 11);
  surface.setTitle("Photoshop");
  topPanel = new GPanel(this, 0, 0, 1440, 60, "");
  topPanel.setCollapsible(false);
  topPanel.setDraggable(false);
  topPanel.setOpaque(true);
  topPanel.addEventHandler(this, "topPanelPressed");
  saveButton = new GButton(this, 1280, 20, 80, 40);
  saveButton.setText("Save");
  saveButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  saveButton.addEventHandler(this, "saveButtonPressed");
  loadButton = new GButton(this, 1200, 20, 80, 40);
  loadButton.setText("Load");
  loadButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  loadButton.addEventHandler(this, "loadButtonPressed");
  exportButton = new GButton(this, 1360, 20, 80, 40);
  exportButton.setText("Export");
  exportButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  exportButton.addEventHandler(this, "exportButtonPressed");
  undoButton = new GButton(this, 0, 20, 80, 40);
  undoButton.setText("Undo");
  undoButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  undoButton.addEventHandler(this, "undoButtonPressed");
  redoButton = new GButton(this, 80, 20, 80, 40);
  redoButton.setText("Redo");
  redoButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  redoButton.addEventHandler(this, "redoButtonPressed");
  canvasZoom = new GLabel(this, 160, 40, 80, 20);
  canvasZoom.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  canvasZoom.setText("100%");
  canvasZoom.setOpaque(true);
  zoomLabel = new GLabel(this, 160, 20, 80, 20);
  zoomLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  zoomLabel.setText("Zoom");
  zoomLabel.setOpaque(false);
  topPanel.addControl(saveButton);
  topPanel.addControl(loadButton);
  topPanel.addControl(exportButton);
  topPanel.addControl(undoButton);
  topPanel.addControl(redoButton);
  topPanel.addControl(canvasZoom);
  topPanel.addControl(zoomLabel);
  toolPanel = new GPanel(this, 0, 60, 80, 700, "Tools");
  toolPanel.setCollapsible(false);
  toolPanel.setDraggable(false);
  toolPanel.setText("Tools");
  toolPanel.setOpaque(true);
  toolPanel.addEventHandler(this, "toolPanelPressed");
  zoomButton = new GButton(this, 0, 20, 40, 40);
  zoomButton.setText("Zoom");
  zoomButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  zoomButton.addEventHandler(this, "zoomButtonPressed");
  brushButton = new GButton(this, 40, 20, 40, 40);
  brushButton.setText("Brush");
  brushButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  brushButton.addEventHandler(this, "brushButtonPressed");
  eraseButton = new GButton(this, 0, 60, 40, 40);
  eraseButton.setText("Erase");
  eraseButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  eraseButton.addEventHandler(this, "eraseButtonPressed");
  fillButton = new GButton(this, 40, 60, 40, 40);
  fillButton.setText("Fill");
  fillButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  fillButton.addEventHandler(this, "fillButtonPressed");
  eyedropperButton = new GButton(this, 40, 100, 40, 40);
  eyedropperButton.setText("Eyedropper");
  eyedropperButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  eyedropperButton.addEventHandler(this, "eyedropperButtonPressed");
  typeButton = new GButton(this, 0, 100, 40, 40);
  typeButton.setText("Type");
  typeButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  typeButton.addEventHandler(this, "typeButtonPressed");
  toolPanel.addControl(zoomButton);
  toolPanel.addControl(brushButton);
  toolPanel.addControl(eraseButton);
  toolPanel.addControl(fillButton);
  toolPanel.addControl(eyedropperButton);
  toolPanel.addControl(typeButton);
  LayersPanel = new GPanel(this, 1120, 60, 320, 350, "Layers");
  LayersPanel.setDraggable(false);
  LayersPanel.setText("Layers");
  LayersPanel.setOpaque(true);
  LayersPanel.addEventHandler(this, "LayersPanelPressed");
  addLayerButton = new GButton(this, 0, 60, 80, 40);
  addLayerButton.setText("Add Layer");
  addLayerButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  addLayerButton.addEventHandler(this, "addLayerButtonPressed");
  deleteLayerButton = new GButton(this, 80, 60, 80, 40);
  deleteLayerButton.setText("Delete Layer");
  deleteLayerButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  deleteLayerButton.addEventHandler(this, "deleteLayerButtonPressed");
  layerOpacity = new GCustomSlider(this, 0, 120, 320, 40, "grey_blue");
  layerOpacity.setShowValue(true);
  layerOpacity.setShowLimits(true);
  layerOpacity.setLimits(1.0, 0.0, 1.0);
  layerOpacity.setNbrTicks(100);
  layerOpacity.setNumberFormat(G4P.DECIMAL, 2);
  layerOpacity.setOpaque(false);
  layerOpacity.addEventHandler(this, "layerOpacityChanged");
  layerOpacityLabel = new GLabel(this, 0, 100, 80, 20);
  layerOpacityLabel.setText("Layer Opacity");
  layerOpacityLabel.setOpaque(false);
  layersList = new GDropList(this, 0, 160, 320, 200, 4, 10);
  layersList.setItems(loadStrings("list_345746"), 0);
  layersList.addEventHandler(this, "layersListClicked");
  lockLayerButton = new GButton(this, 0, 20, 80, 40);
  lockLayerButton.setText("Lock Layer");
  lockLayerButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  lockLayerButton.addEventHandler(this, "lockLayerButtonPressed");
  copyButton = new GButton(this, 80, 20, 80, 40);
  copyButton.setText("Copy");
  copyButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  copyButton.addEventHandler(this, "copyButtonPressed");
  pasteButton = new GButton(this, 160, 20, 80, 40);
  pasteButton.setText("Paste");
  pasteButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  pasteButton.addEventHandler(this, "pasteButtonPressed");
  duplicateLayerButton = new GButton(this, 160, 60, 80, 40);
  duplicateLayerButton.setText("Duplicate Layer");
  duplicateLayerButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  duplicateLayerButton.addEventHandler(this, "duplicateLayerButtonPressed");
  sendForwardButton = new GButton(this, 240, 20, 80, 40);
  sendForwardButton.setText("Send Forward");
  sendForwardButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  sendForwardButton.addEventHandler(this, "sendForwardButtonPressed");
  sendBackwardButton = new GButton(this, 240, 60, 80, 40);
  sendBackwardButton.setText("Send Backward");
  sendBackwardButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  sendBackwardButton.addEventHandler(this, "sendBackwardButtonPressed");
  LayersPanel.addControl(addLayerButton);
  LayersPanel.addControl(deleteLayerButton);
  LayersPanel.addControl(layerOpacity);
  LayersPanel.addControl(layerOpacityLabel);
  LayersPanel.addControl(layersList);
  LayersPanel.addControl(lockLayerButton);
  LayersPanel.addControl(copyButton);
  LayersPanel.addControl(pasteButton);
  LayersPanel.addControl(duplicateLayerButton);
  LayersPanel.addControl(sendForwardButton);
  LayersPanel.addControl(sendBackwardButton);
  propertiesPanel = new GPanel(this, 1120, 410, 320, 350, "Properties");
  propertiesPanel.setCollapsible(false);
  propertiesPanel.setDraggable(false);
  propertiesPanel.setText("Properties");
  propertiesPanel.setOpaque(true);
  propertiesPanel.addEventHandler(this, "propertiesPanelPressed");
  cwRotationButton = new GButton(this, 0, 120, 80, 40);
  cwRotationButton.setText("Rotate 90º Clockwise");
  cwRotationButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  cwRotationButton.addEventHandler(this, "cwRotationButtonPressed");
  ccwRotationButton = new GButton(this, 80, 120, 80, 40);
  ccwRotationButton.setText("Rotate 90º Counterclockwise");
  ccwRotationButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  ccwRotationButton.addEventHandler(this, "ccwRotationButtonPressed");
  flipHorizontalButton = new GButton(this, 160, 120, 80, 40);
  flipHorizontalButton.setText("Flip Horizontal");
  flipHorizontalButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  flipHorizontalButton.addEventHandler(this, "flipHorizontalButtonPressed");
  flipVerticalButton = new GButton(this, 240, 120, 80, 40);
  flipVerticalButton.setText("Flip Vertical");
  flipVerticalButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  flipVerticalButton.addEventHandler(this, "flipVerticalButtonPressed");
  layerWidthLabel = new GLabel(this, 0, 20, 160, 20);
  layerWidthLabel.setText("Width");
  layerWidthLabel.setOpaque(false);
  layerWidth = new GTextField(this, 0, 40, 160, 30, G4P.SCROLLBARS_NONE);
  layerWidth.setOpaque(true);
  layerWidth.addEventHandler(this, "textfield2_change1");
  layerHeightLabel = new GLabel(this, 0, 70, 160, 20);
  layerHeightLabel.setText("Height");
  layerHeightLabel.setOpaque(false);
  layerHeight = new GTextField(this, 0, 90, 160, 30, G4P.SCROLLBARS_NONE);
  layerHeight.setOpaque(true);
  layerHeight.addEventHandler(this, "layerHeightChanged");
  layerXLabel = new GLabel(this, 160, 20, 160, 20);
  layerXLabel.setText("X");
  layerXLabel.setOpaque(false);
  layerX = new GTextField(this, 160, 40, 160, 30, G4P.SCROLLBARS_NONE);
  layerX.setOpaque(true);
  layerX.addEventHandler(this, "layerXChanged");
  layerYLabel = new GLabel(this, 160, 70, 160, 20);
  layerYLabel.setText("Y");
  layerYLabel.setOpaque(false);
  layerY = new GTextField(this, 160, 90, 160, 30, G4P.SCROLLBARS_NONE);
  layerY.setOpaque(true);
  layerY.addEventHandler(this, "layerYChanged");
  propertiesPanel.addControl(cwRotationButton);
  propertiesPanel.addControl(ccwRotationButton);
  propertiesPanel.addControl(flipHorizontalButton);
  propertiesPanel.addControl(flipVerticalButton);
  propertiesPanel.addControl(layerWidthLabel);
  propertiesPanel.addControl(layerWidth);
  propertiesPanel.addControl(layerHeightLabel);
  propertiesPanel.addControl(layerHeight);
  propertiesPanel.addControl(layerXLabel);
  propertiesPanel.addControl(layerX);
  propertiesPanel.addControl(layerYLabel);
  propertiesPanel.addControl(layerY);
}

// Variable declarations 
// autogenerated do not edit
GPanel topPanel; 
GButton saveButton; 
GButton loadButton; 
GButton exportButton; 
GButton undoButton; 
GButton redoButton; 
GLabel canvasZoom; 
GLabel zoomLabel; 
GPanel toolPanel; 
GButton zoomButton; 
GButton brushButton; 
GButton eraseButton; 
GButton fillButton; 
GButton eyedropperButton; 
GButton typeButton; 
GPanel LayersPanel; 
GButton addLayerButton; 
GButton deleteLayerButton; 
GCustomSlider layerOpacity; 
GLabel layerOpacityLabel; 
GDropList layersList; 
GButton lockLayerButton; 
GButton copyButton; 
GButton pasteButton; 
GButton duplicateLayerButton; 
GButton sendForwardButton; 
GButton sendBackwardButton; 
GPanel propertiesPanel; 
GButton cwRotationButton; 
GButton ccwRotationButton; 
GButton flipHorizontalButton; 
GButton flipVerticalButton; 
GLabel layerWidthLabel; 
GTextField layerWidth; 
GLabel layerHeightLabel; 
GTextField layerHeight; 
GLabel layerXLabel; 
GTextField layerX; 
GLabel layerYLabel; 
GTextField layerY; 
