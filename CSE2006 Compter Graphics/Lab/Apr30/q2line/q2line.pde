void setup () {
  size(500,500,P3D);
  noLoop();
}
void draw(){
 line(10,10,70,70); 
 translate(100,50,70);
 line(10,10,70,70); 
 rotateX(PI/6);
 rotateY(PI/8);
 rotateZ(PI/6);
 line(10,10,70,70);  
}
