// Global Variables
float buttonX, buttonY, buttonWidth, buttonHeight;
float rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight;
float circleX, circleY, circleWidth, circleHeight;
Boolean rectOn=false, circleOn=false;
color black=#000000;

void setup() {
  size(500, 400); //fullScreen(), displayWidth & displayHeight, leads to ScreenChecker()
  population(); //illustrates multiple lines of code
  textSetup();
}//End setup()

void draw() {
  background(black);
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  textDraw();
  if (rectOn == true && circleOn == false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight);
  if (rectOn == false && circleOn == true) ellipse(circleX, circleY, circleWidth, circleHeight);
}//End draw()

void mousePressed() {
  // Booleans on and off
  println ("Before", rectOn, circleOn);
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) {
    if (rectOn == true) {
      rectOn = false;
      circleOn = true;
    } else {
      rectOn = true;
      circleOn = false;
    }
  }
  println ("After", rectOn, circleOn);
}//End mousePressed()

void population() {
  buttonX = width/2;
  buttonY = height/2;
  buttonWidth = width*1/5;
  buttonHeight = height*1/5;
  rectDisplayX = width*1/8;
  rectDisplayY = height*1/8;
  rectDisplayWidth = width*1/5;
  rectDisplayHeight = height*1/5;
  circleX = width*6/8;
  circleY = height*1/8;
  circleWidth = width*1/8;
  circleHeight = height*1/8;
}

String buttonText= "Click This";
PFont titleFont;
color orange = #FF9D24;

void textSetup() { //To Main Program
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}//End textSetup

void textDraw() { //To Main Program

  fill(orange); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER);

  textFont(titleFont, 20); //Change the number until it fits, largest font size
  text(buttonText, buttonX, buttonY, buttonWidth, buttonHeight);
  fill(255); //Reset to white for rest of the program
}//End textDraw
