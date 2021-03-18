int xPos=200, xDir=1;
float ang=0;
void setup()
{
  size (700,700);
  smooth();
  background(0);
  noStroke();
  fill(0,255,0);
}

void draw()
{  
  background(0, 0, 0);
  fill(255,255,0);
  ellipse(350,350,100,100);
  translate(width/2, height/2);
  rotate(ang);
  ang+=0.01;
  //mercury
  fill(170, 43, 29);
  ellipse(70,75,23,23);
  //venus
  rotate(7);
  fill(204, 86, 30);
  ellipse(72,130,25,25);
  //earth
  rotate(0.7);
  fill(0, 64, 127);
  ellipse(74,160,40,40);
  //mars
  rotate(0.01);
  fill(204, 0, 10);
  ellipse(74,220,25,25);
  //jupiter
  rotate(0.9);
  fill(158, 117, 64);
  ellipse(74,240,60,60);
}
