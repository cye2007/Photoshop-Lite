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

public void toolPanelPressed(GPanel source, GEvent event) { //_CODE_:toolPanel:330345:
  println("toolPanel - GPanel >> GEvent." + event + " @ " + millis());
} //_CODE_:toolPanel:330345:

public void brushButtonPressed(GButton source, GEvent event) { //_CODE_:brushButton:681834:
  println("brushButton - GButton >> GEvent." + event + " @ " + millis());
  currentTool = brush;
} //_CODE_:brushButton:681834:

public void eraseButtonPressed(GButton source, GEvent event) { //_CODE_:eraseButton:768440:
  println("eraseButton - GButton >> GEvent." + event + " @ " + millis());
  currentTool = erase;
} //_CODE_:eraseButton:768440:

public void fillButtonPressed(GButton source, GEvent event) { //_CODE_:fillButton:563538:
  println("fillButton - GButton >> GEvent." + event + " @ " + millis());
  currentTool = fill;
} //_CODE_:fillButton:563538:

public void eyedropperButtonPressed(GButton source, GEvent event) { //_CODE_:eyedropperButton:526776:
  println("colorPickerButton - GButton >> GEvent." + event + " @ " + millis());
  currentTool = eyedropper;
} //_CODE_:eyedropperButton:526776:

public void typeButtonPressed(GButton source, GEvent event) { //_CODE_:typeButton:254522:
  println("typeButton - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:typeButton:254522:

public void addImageButtonPressed(GButton source, GEvent event) { //_CODE_:addImageButton:495799:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  selectInput("Select an image", "imageSelected");
} //_CODE_:addImageButton:495799:

public void LayerPanelPressed(GPanel source, GEvent event) { //_CODE_:LayerPanel:209891:
  println("panel1 - GPanel >> GEvent." + event + " @ " + millis());
} //_CODE_:LayerPanel:209891:

public void addLayerButtonPressed(GButton source, GEvent event) { //_CODE_:addLayerButton:215204:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  canvas.addLayer(layerIndex + 1);
  layerIndex++;
  setLayerProperties();
} //_CODE_:addLayerButton:215204:

public void deleteLayerButtonPressed(GButton source, GEvent event) { //_CODE_:deleteLayerButton:679056:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  canvas.deleteLayer(layerIndex);
  layerIndex = Math.min(layerIndex, canvas.size() - 1);
  setLayerProperties();
} //_CODE_:deleteLayerButton:679056:

public void layerOpacityChanged(GCustomSlider source, GEvent event) { //_CODE_:layerOpacity:549092:
  println("layerOpacity - GCustomSlider >> GEvent." + event + " @ " + millis());
  currentLayer.setOpacity(layerOpacity.getValueF());
} //_CODE_:layerOpacity:549092:

public void layersListClicked(GDropList source, GEvent event) { //_CODE_:layersList:345746:
  println("layersList - GDropList >> GEvent." + event + " @ " + millis());
  layerIndex = layersList.getSelectedIndex();
  setLayerProperties();
} //_CODE_:layersList:345746:

public void lockLayerButtonPressed(GButton source, GEvent event) { //_CODE_:lockLayerButton:333202:
  println("button1 - GButton >> GEvent." + event + " @ " + millis());
  currentLayer.toggleLock();
  setLayerProperties();
} //_CODE_:lockLayerButton:333202:

public void copyButtonPressed(GButton source, GEvent event) { //_CODE_:copyButton:732777:
  println("button2 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:copyButton:732777:

public void pasteButtonPressed(GButton source, GEvent event) { //_CODE_:pasteButton:888864:
  println("button3 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:pasteButton:888864:

public void duplicateLayerButtonPressed(GButton source, GEvent event) { //_CODE_:duplicateLayerButton:361188:
  println("button4 - GButton >> GEvent." + event + " @ " + millis());
  canvas.addLayer(layerIndex + 1, currentLayer.duplicate());
  layerIndex++;
  setLayerProperties();
} //_CODE_:duplicateLayerButton:361188:

public void sendForwardButtonPressed(GButton source, GEvent event) { //_CODE_:sendForwardButton:726429:
  println("button5 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:sendForwardButton:726429:

public void sendBackwardButtonPressed(GButton source, GEvent event) { //_CODE_:sendBackwardButton:265970:
  println("button6 - GButton >> GEvent." + event + " @ " + millis());
} //_CODE_:sendBackwardButton:265970:

public void layerNameChanged(GTextField source, GEvent event) { //_CODE_:layerName:886666:
  println("textfield1 - GTextField >> GEvent." + event + " @ " + millis());
  currentLayer.setName(layerName.getText());
} //_CODE_:layerName:886666:



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
  saveButton = new GButton(this, 80, 20, 80, 40);
  saveButton.setText("Save");
  saveButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  saveButton.addEventHandler(this, "saveButtonPressed");
  loadButton = new GButton(this, 0, 20, 80, 40);
  loadButton.setText("Load");
  loadButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  loadButton.addEventHandler(this, "loadButtonPressed");
  exportButton = new GButton(this, 160, 20, 80, 40);
  exportButton.setText("Export");
  exportButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  exportButton.addEventHandler(this, "exportButtonPressed");
  topPanel.addControl(saveButton);
  topPanel.addControl(loadButton);
  topPanel.addControl(exportButton);
  toolPanel = new GPanel(this, 0, 60, 80, 620, "Tools");
  toolPanel.setCollapsible(false);
  toolPanel.setDraggable(false);
  toolPanel.setText("Tools");
  toolPanel.setOpaque(true);
  toolPanel.addEventHandler(this, "toolPanelPressed");
  brushButton = new GButton(this, 0, 20, 80, 40);
  brushButton.setText("Brush");
  brushButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  brushButton.addEventHandler(this, "brushButtonPressed");
  eraseButton = new GButton(this, 0, 60, 80, 40);
  eraseButton.setText("Erase");
  eraseButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  eraseButton.addEventHandler(this, "eraseButtonPressed");
  fillButton = new GButton(this, 0, 100, 80, 40);
  fillButton.setText("Fill");
  fillButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  fillButton.addEventHandler(this, "fillButtonPressed");
  eyedropperButton = new GButton(this, 0, 180, 80, 40);
  eyedropperButton.setText("Eyedropper");
  eyedropperButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  eyedropperButton.addEventHandler(this, "eyedropperButtonPressed");
  typeButton = new GButton(this, 0, 140, 80, 40);
  typeButton.setText("Type");
  typeButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  typeButton.addEventHandler(this, "typeButtonPressed");
  addImageButton = new GButton(this, 0, 220, 80, 40);
  addImageButton.setText("Add Image");
  addImageButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  addImageButton.addEventHandler(this, "addImageButtonPressed");
  toolPanel.addControl(brushButton);
  toolPanel.addControl(eraseButton);
  toolPanel.addControl(fillButton);
  toolPanel.addControl(eyedropperButton);
  toolPanel.addControl(typeButton);
  toolPanel.addControl(addImageButton);
  LayerPanel = new GPanel(this, 1120, 60, 320, 700, "Layer");
  LayerPanel.setDraggable(false);
  LayerPanel.setText("Layer");
  LayerPanel.setOpaque(true);
  LayerPanel.addEventHandler(this, "LayerPanelPressed");
  addLayerButton = new GButton(this, 0, 80, 80, 40);
  addLayerButton.setText("Add Layer");
  addLayerButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  addLayerButton.addEventHandler(this, "addLayerButtonPressed");
  deleteLayerButton = new GButton(this, 80, 80, 80, 40);
  deleteLayerButton.setText("Delete Layer");
  deleteLayerButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  deleteLayerButton.addEventHandler(this, "deleteLayerButtonPressed");
  layerOpacity = new GCustomSlider(this, 0, 140, 320, 40, "grey_blue");
  layerOpacity.setShowValue(true);
  layerOpacity.setShowLimits(true);
  layerOpacity.setLimits(1.0, 0.0, 1.0);
  layerOpacity.setNbrTicks(100);
  layerOpacity.setNumberFormat(G4P.DECIMAL, 2);
  layerOpacity.setOpaque(false);
  layerOpacity.addEventHandler(this, "layerOpacityChanged");
  layerOpacityLabel = new GLabel(this, 0, 120, 80, 20);
  layerOpacityLabel.setText("Layer Opacity");
  layerOpacityLabel.setOpaque(false);
  layersList = new GDropList(this, 0, 180, 320, 440, 10, 20);
  layersList.setItems(loadStrings("list_345746"), 0);
  layersList.addEventHandler(this, "layersListClicked");
  lockLayerButton = new GButton(this, 0, 40, 80, 40);
  lockLayerButton.setText("Lock Layer");
  lockLayerButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  lockLayerButton.addEventHandler(this, "lockLayerButtonPressed");
  copyButton = new GButton(this, 80, 40, 80, 40);
  copyButton.setText("Copy");
  copyButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  copyButton.addEventHandler(this, "copyButtonPressed");
  pasteButton = new GButton(this, 160, 40, 80, 40);
  pasteButton.setText("Paste");
  pasteButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  pasteButton.addEventHandler(this, "pasteButtonPressed");
  duplicateLayerButton = new GButton(this, 160, 80, 80, 40);
  duplicateLayerButton.setText("Duplicate Layer");
  duplicateLayerButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  duplicateLayerButton.addEventHandler(this, "duplicateLayerButtonPressed");
  sendForwardButton = new GButton(this, 240, 40, 80, 40);
  sendForwardButton.setText("Send Forward");
  sendForwardButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  sendForwardButton.addEventHandler(this, "sendForwardButtonPressed");
  sendBackwardButton = new GButton(this, 240, 80, 80, 40);
  sendBackwardButton.setText("Send Backward");
  sendBackwardButton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  sendBackwardButton.addEventHandler(this, "sendBackwardButtonPressed");
  layerName = new GTextField(this, 0, 20, 240, 20, G4P.SCROLLBARS_NONE);
  layerName.setOpaque(true);
  layerName.addEventHandler(this, "layerNameChanged");
  lockStateLabel = new GLabel(this, 240, 20, 80, 20);
  lockStateLabel.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  lockStateLabel.setOpaque(true);
  LayerPanel.addControl(addLayerButton);
  LayerPanel.addControl(deleteLayerButton);
  LayerPanel.addControl(layerOpacity);
  LayerPanel.addControl(layerOpacityLabel);
  LayerPanel.addControl(layersList);
  LayerPanel.addControl(lockLayerButton);
  LayerPanel.addControl(copyButton);
  LayerPanel.addControl(pasteButton);
  LayerPanel.addControl(duplicateLayerButton);
  LayerPanel.addControl(sendForwardButton);
  LayerPanel.addControl(sendBackwardButton);
  LayerPanel.addControl(layerName);
  LayerPanel.addControl(lockStateLabel);
  colorDisplayLabel = new GLabel(this, 0, 660, 80, 20);
  colorDisplayLabel.setText("Color");
  colorDisplayLabel.setOpaque(false);
}

// Variable declarations 
// autogenerated do not edit
GPanel topPanel; 
GButton saveButton; 
GButton loadButton; 
GButton exportButton; 
GPanel toolPanel; 
GButton brushButton; 
GButton eraseButton; 
GButton fillButton; 
GButton eyedropperButton; 
GButton typeButton; 
GButton addImageButton; 
GPanel LayerPanel; 
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
GTextField layerName; 
GLabel lockStateLabel; 
GLabel colorDisplayLabel; 
