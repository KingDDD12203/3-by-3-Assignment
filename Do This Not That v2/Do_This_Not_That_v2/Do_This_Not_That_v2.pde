// Global Variables
float buttonX, buttonY, buttonWidth, buttonHeight;
float circle2X, circle2Y, circle2Width, circle2Height;
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
  if (rectOn == true && circleOn == false) ellipse(circle2X, circle2Y, circle2Width, circle2Height);
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
  circle2X = width*1/7;
  circle2Y = height*1/7;
  circle2Width = width*1/6;
  circle2Height = height*1/6;
  circleX = width*6/9;
  circleY = height*1/9;
  circleWidth = width*1/9;
  circleHeight = height*1/9;
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
  //Note: visualization rectangle is in main program
  fill(orange); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, 20); //Change the number until it fits, largest font size
  text(buttonText, buttonX, buttonY, buttonWidth, buttonHeight);
  fill(255); //Reset to white for rest of the program
}//End textDraw
