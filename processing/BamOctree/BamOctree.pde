// https://forum.processing.org/two/discussion/10001/how-to-create-and-control-an-octree

boolean[] bx = {
  false, true, false, true, false, true, false, true
};
boolean[] by = {
  false, false, true, true, false, false, true, true
};
boolean[] bz = {
  false, false, false, false, true, true, true, true
};
 
Octree ot = new Octree( 200, new PVector(0, 0, 0), true, 0);
 
void setup() {
  size(400, 400, P3D);
}
 
void draw() {
  background(0);
  translate(width/2, height/2, 0);
  rotateY(map(mouseX, 0, width, -PI, PI));    
  rotateX(map(mouseY, 0, height, -PI, PI));
  translate(-100, -100, -100);
  ot.draw();
}  