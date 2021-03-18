void setup(){
  size(100, 100);
  noStroke();
}
void draw(){
  background(204);
  int r1 = 0, g1=0, b1=0, r2 = 0, g2=0, b2=0, r3 = 0, g3=0, b3=0;
  if((keyPressed == true)&&(key=='R')){
    r1=255;
    g1=0;
    b1=0;
    r2=204;
    g2=204;
    b2=204;
    r3=204;
    g3=204;
    b3=204;
  } 
  else if((keyPressed == true)&&(key=='Y')){
    r1=204;
    g1=204;
    b1=204;
    r2=255;
    g2=239;
    b2=0;
    r3=204;
    g3=204;
    b3=204;
  }
  
  else {
    r1=204;
    g1=204;
    b1=204;
    r2=204;
    g2=204;
    b2=204;
    r3=0;
    g3=255;
    b3=0;
  }
  fill(r1,g1,b1);
  ellipse(20,20,20,20);
  fill(r2,g2,b2);
  ellipse(20,40,20,20);
  fill(r3,g3,b3);
  ellipse(20,60,20,20);
}
