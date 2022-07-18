 
//Global Variables
float xFace, yFace, widthDiameterFace, heightDiameterFace, faceRadius, xCenter,yCenter, smallerDimension;
float xLeftEye, yLeftEye, xRightEye, yRightEye, eyeDiameter, xleftPupil, yleftPupil,  xrightPupil, yrightPupil, PupilDiameter;
float xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril;
float xLeftMouth, yLeftMouth, xRightMouth, yRightMouth;
float xMeasle, yMeasle, measleDiameter;
color resetWhite=#FFFFFF, red=#FF0000;
Boolean nightMode=true;
 color backgroundColour;
//
void setup()
{
  //CANVAS will will be added to later
  size(800, 600); //Landscape
  //
  //Population
  background (xFace);
  xCenter = width/2;
  float yCenter = height/2;
  xFace = xCenter;
  yFace = yCenter;
  
  if ( width >= height ) {
    smallerDimension = height;
  } else {
    smallerDimension = width;
  }//End dimension choice
  widthDiameterFace = smallerDimension;
  heightDiameterFace = smallerDimension;
  xLeftEye = xCenter-smallerDimension*1/4;
  yLeftEye = yCenter-smallerDimension*1/7;
  xleftPupil = xCenter-smallerDimension*1/4;
  yleftPupil = yCenter-smallerDimension*1/7;
  xRightEye = xCenter+smallerDimension*1/4;
  yRightEye = yCenter-smallerDimension*1/7;
  xrightPupil = xCenter+smallerDimension*1/4;
  yrightPupil = yCenter+smallerDimension*1/7;
  eyeDiameter = smallerDimension*1/8;
  PupilDiameter = smallerDimension*1/16;
  xNoseBridge = xCenter;
  yNoseBridge = yCenter-smallerDimension*1/8;
  xLeftNostril = xCenter-smallerDimension*1/8; 
  yLeftNostril = yCenter+smallerDimension*1/8;
  xRightNostril = xCenter+smallerDimension*1/8;
  yRightNostril = yLeftNostril;
  xLeftMouth = xLeftEye;
  yLeftMouth = yCenter+smallerDimension*1/4;
  xRightMouth = xRightEye;
  yRightMouth = yLeftMouth;
  faceRadius = smallerDimension/3+smallerDimension*1/8;
  measleDiameter = smallerDimension*1/50;
  //
 Boolean nightMode=true;
  backgroundColour = ( nightMode==true ) ? color( random(255), random(255), 0 ) : color( random(255), random(255), random(255) ) ; //ternary operator, similar to IF-Else
  background( backgroundColour );
  background (xFace);
  ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);
  //
}//End setup
//
void draw()
{
  ellipse(xLeftEye, yLeftEye, eyeDiameter, eyeDiameter);
  ellipse(xleftPupil, yleftPupil, PupilDiameter, PupilDiameter);
  ellipse(xRightEye, yRightEye, eyeDiameter, eyeDiameter);
  ellipse(xrightPupil, yrightPupil, PupilDiameter, PupilDiameter);
  triangle(xNoseBridge, yNoseBridge, xLeftNostril, yLeftNostril, xRightNostril, yRightNostril);
  line(xLeftMouth, yLeftMouth, xRightMouth, yRightMouth);
  //
  xMeasle = random(xCenter-faceRadius, xCenter+faceRadius);
  yMeasle = random(smallerDimension);
  ellipse(xCenter-faceRadius, 0,2*faceRadius,smallerDimension);
  fill(red);
  noStroke();
  measleDiameter =random(smallerDimension*1/50+smallerDimension*1/65);
  ellipse(xMeasle, yMeasle, measleDiameter, measleDiameter);
  stroke(1);
  fill(resetWhite);
  //
}//End draw
//
void keyPressed() {
}//End keyPressed
//
void mousePressed() {
  if(mouseButton== LEFT){ 
    backgroundColour = color(random(255), random(255), random(255) );
    background( backgroundColour);
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);}
  if(mouseButton==RIGHT){ backgroundColour = color( random(255), random(255), 0 );
    background( backgroundColour );
    ellipse(xFace, yFace, widthDiameterFace, heightDiameterFace);}
  if  (nightMode == false){//switch
  nightMode = true;
  } else{
    nightMode = false;
}//End mousePressed
};
