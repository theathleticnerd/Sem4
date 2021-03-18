int xPos=200;
int xDir=1;
void setup(){
  //setup runs once when the program starts
  size(400,400);
  smooth();
  background(0);
  noStroke();
  fill(0,255,0);
}
void draw()
{
  background(0);
  ellipse(xPos, 200, 40, 40);
  xPos=xPos+1;
  if (xPos>width+20)
  {
    xPos=-20;
  }
}
