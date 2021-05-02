void setup () {
  size(500,500,P3D);
  noLoop();
}
void draw(){
 translate(150,150,30);
  rotateY(PI/4);
 rotateX(PI/6);
 rotateZ(PI/4);
 scale(2);
 sphere(30);
}
