void setup() {
  size(500, 500, P3D);
  background(0);
  noStroke();
}

void draw() {
  // Include lights() at the beginning
  // of draw() to keep them persistent 
  lights();
  translate(120, 150, 0);
  sphere(30);
  translate(160, 0, 0);
  sphere(30);
}
