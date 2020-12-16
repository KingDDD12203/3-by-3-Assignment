// Global Variables
float buttonX1, buttonY1, buttonWidth1, buttonHeight1;
float buttonX2, buttonY2, buttonWidth2, buttonHeight2;
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
  rect(buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  textDraw1();
  rect(buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  textDraw2();
  if (rectOn == true && circleOn == false) rect(rectDisplayX, rectDisplayY, rectDisplayWidth, rectDisplayHeight);
  if (rectOn == false && circleOn == true) ellipse(circleX, circleY, circleWidth, circleHeight);
}//End draw()

void mousePressed() {
  // Booleans all off immeidately
  rectOn = false;
  circleOn = false;
  println ("Before", rectOn, circleOn);
  //
  if (mouseX>buttonX1 && mouseX<buttonX1+buttonWidth1 && mouseY>buttonY1 && mouseY<buttonY1+buttonHeight1 ) rectOn = true;
  if (mouseX>buttonX2 && mouseX<buttonX2+buttonWidth2 && mouseY>buttonY2 && mouseY<buttonY2+buttonHeight2 ) circleOn = true;
  println ("After", rectOn, circleOn);
}//End mousePressed()

void population() {
  buttonX1 = width*1/4;
  buttonY1 = height*3/4;
  buttonWidth1 = width*1/5;
  buttonHeight1 = height*1/5;
  buttonX2 = width*3/4;;
  buttonY2 = height*3/4;;
  buttonWidth2 = buttonWidth1;
  buttonHeight2 = buttonHeight1;
  rectDisplayX = width*1/8;
  rectDisplayY = height*1/8;
  rectDisplayWidth = buttonWidth1;
  rectDisplayHeight = buttonWidth1;
  circleX = width*6/8;
  circleY = height*1/8;
  circleWidth = width*1/8;
  circleHeight = height*1/8;
}
String buttonText1= "This One";
String buttonText2= "Or This One";
PFont titleFont;
color orange = #FF911A;

void textSetup() { //To Main Program
  //String[] fontList = PFont.list(); //To list all fonts available on system
  println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  titleFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
}//End textSetup

void textDrawPre() { //"Copy and Paste Below
  //Note: visualization rectangle is in main program
  fill(orange); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(titleFont, 20); //Change the number until it fits, largest font size
}//End textDrawPre

void textDraw1() { //To Main Program
  textDrawPre();
  text(buttonText1, buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  fill(255); //Reset to white for rest of the program
}//End textDraw1

void textDraw2() { //To Main Program
  textDrawPre();
  text(buttonText2, buttonX2, buttonY2, buttonWidth2, buttonHeight2);
  fill(255); //Reset to white for rest of the program
}//End textDraw
