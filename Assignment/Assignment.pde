//Global Variables
color circleRed = #FF0303,
float ptDiameter, rectWidth, rectHeight;
float pt1X, pt1Y, pt2X, pt2Y, pt3X, pt3Y, pt4X, pt4Y;
float pt5X, pt5Y, pt6X, pt6Y, pt7X, pt7Y, pt8X, pt8Y;
float pt9X, pt9Y, pt10X, pt10Y, pt11X, pt11Y, pt12X, pt12Y;
float pt13X, pt13Y, pt14X, pt14Y, pt15X, pt15Y, pt16X, pt16Y;
float button1X, button1Y, button1Width, button1Height;
float button2X, button2Y, button2Width, button2Height;
float button3X, button3Y, button3Width, button3Height;
float button4X, button4Y, button4Width, button4Height;

void setup() {
  size(500, 600);
  ptDiameter = width * 1 / 27.77777777;
  rectWidth = width*1/3;
  rectHeight = height*1/3;
  //
  pt1X = pt5X = pt9X = pt13X = width*0;
  pt2X = pt6X = pt10X = pt14X = width*1/3;
  pt3X = pt7X = pt11X = pt15X = width*2/3;
  pt4X = pt8X = pt12X = pt16X = width*3/3;
  //
  pt1Y = pt2Y = pt3Y = pt4Y = height*0;
  pt5Y = pt6Y = pt7Y = pt8Y = height*1/3;
  pt9Y = pt10Y = pt11Y = pt12Y = height*2/3;
  pt13Y = pt14Y = pt15Y = pt16Y= height*3/3;
  //
  //
   button1X = width * 1/3 * 1/3; //Section 1, subsection 1
   button1Y = height * 1/3 * 1/3; //Section 1, subsection 1
   button1Width = width * 1/3 * 1/3;
   button1Height = height * 1/3 * 1/3;
   //
   // 
   button2X = width * 3/6;
   button2Y = height * 2/6 ;
   button2Width = width * 1/3 * 1/2;
   button2Height = height * 1/3 * 1/2;
   //
   //
   button3X = width * 11/15;
   button3Y = height * 14/16;
   button3Width = width * 1/3 * 1/5;
   button3Height = height * 1/3 * 1/5;
//
   button4X = width*11/15;
   button4Y = height*1/15;
   button4Width = width*3/15;
   button4Height = height*3/15;
 }
