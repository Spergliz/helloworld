//global variables
String mr= "mr";
char period = '.';
char space = ' ';
String teacher = "mercer";
String is = "is";
String areyouserious = "amazing";
int appWidth,  appHeight;
//

void setup() 
{
 //convas setup
//ullscreen();
  size(1500, 1000); //display geometry: landscape, portrait, sqaure 
  // able to swan key variables 
  appWidth = width
  appHeight = height
  println(width,height, displayWidth, displayHeight);
  // you can only see the canvas when its smaller than the gay little display 
  if(width >= displayWidth) exit();//comment below
  if(height >= displayHeight) exit (); //this is fucking stupid, this is just crashing the app,just tell your end user to not be a fucking loser instead and find another device that fits the screen
  if (width >= displayWidth || height >= displayHeight) println (" fix your shit the display is too massive for this");
  //
  //display tism
  String ls="landscape or square", p="portrait or sqaure", DO= "Display Orientation",instruct= "turn your phone";
  String orientation = (appWidth >= appHeight)? ls : p ; //ternary OP
  println (DO, orientation);
  if (orienation == p) println(instruct);
  if ( orientation == ls) {
 println ("good");
  } else {
  println(instruct);
  appWidth *= 0; 
  appHeight *= 0;
  
  }
  
  //
}//end spergup
//
void draw()
{
println(mr+period, teacher, is,period+period+period, "\t\t\t"+areyouserious);  //Character escapes: letter is actually code b/c forwardslash, t=tab, n=newline
//138:period=46(ascii decimal number), thus 46*3=138 (or period+period+period)
}//end draw 
//
void keypressed(){}//end keypressed
//
void mousepressed(){}// end mousepressed
//
//end main programs
