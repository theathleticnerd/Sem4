//translation
/*
size(200,200);
rect(10, 10, 55, 55);  // Draw rect at original 0,0
translate(30, 20);
rect(10, 10, 55, 55);  // Draw rect at new 0,0
translate(14, 14);
rect(10, 10, 55, 55);
*/
//rotation 
/*
float angle;
float jitter;
void setup() {
  size(640, 360);
  noStroke();
  fill(255);
  rectMode(CENTER);
}

void draw() {
  background(51);

  // during even-numbered seconds (0, 2, 4, 6...)
  if (second() % 2 == 0) {  
    jitter = random(-0.1, 0.1);
  }
  angle = angle + jitter;
  float c = cos(angle);
  translate(width/2, height/2);
  rotate(c);
  rect(0, 0, 180, 180);   
}
*/

//scaling
/*
float a = 0.0;
float s = 0.0;

void setup() {
  size(640, 360);
  noStroke();
  rectMode(CENTER);
  frameRate(30);
}

void draw() {
  
  background(102);
  
  a = a + 0.04;
  s = cos(a)*2;
  
  translate(width/2, height/2);
  scale(s); 
  fill(51);
  rect(0, 0, 50, 50); 
  
  translate(75, 0);
  fill(255);
  scale(s);
  rect(0, 0, 50, 50);       
}
*/

//shear
/*size(400,400);
translate(width/4, height/4);
shearX(PI/4.0);
rect(0, 0, 30, 30);

translate(width/4, height/4);
shearY(PI/4.0);
rect(0, 0, 60, 60);
*/

//reflection
/*void setup() {
  size(640, 360, P3D);
  noStroke();
  colorMode(RGB, 1);
  fill(0.4);
}

void draw() {
  background(0);
  translate(width / 2, height / 2);
  // Set the specular color of lights that follow
  lightSpecular(1, 1, 1);
  directionalLight(0.8, 0.8, 0.8, 0, 0, -1);
  float s = mouseX / float(width);
  specular(s, s, s);
  sphere(120);
}*/
