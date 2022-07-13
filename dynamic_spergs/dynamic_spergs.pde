//global variables
String mr= "mr";
char period = '.';
char space = ' ';
String teacher = "mercer";
String is = "is";
String areyouserious = "amazing";
//

void setup() 
{
 //convas setup
//ullscreen();
  size(1920, 1080);
  println(width,height, displayWidth, displayHeight);
  // you can only see the canvas when its smaller than the gay little display 
  if(width >= displayWidth) exit();//comment below
  if(height >= displayHeight) exit (); //this is fucking stupid, this is just crashing the app, tell your end user to not be a fucking loser instead and find another device that fits the screen
  if (width >= displayWidth || height >= displayHeight) println (" fix your shit the display is too massive for this");

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
