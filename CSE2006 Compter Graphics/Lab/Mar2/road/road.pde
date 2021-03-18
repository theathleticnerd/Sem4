void setup(){
  size(400,400);
  noStroke();
  background(1);
  
}
void draw(){
  //
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
  //dd
  background(1);
  fill(100);
  rect(70,0,250,1000);
  fill(169,169,169);
  rect(30,100,30,55);
  rect(40,150,10,25);
  fill(r1,g1,b1);
  ellipse(43,110,20,20);
  fill(r3,g3,b3);
  ellipse(43,135,20,20);
  
  fill(255);
  ellipse(120, mouseY+200,33,33); //top circle
  ellipse(120, mouseY/2,33,33); //middle circle
  ellipse(170, mouseY*2+100, 33, 33); //bottom circle
  for(int i = 10; i<width; i+=10){
    ellipse (height/2,i,4,4);  
   }
  float iy = height -mouseY; //inverse Y 
 
  ellipse(240, iy+100,33,33); //top circle
  ellipse(240, iy/2,33,33); //middle circle
  ellipse(290, iy*2+250, 33, 33); //bottom circle
  
}
