float rotx, roty;


void setup(){
  size(1440,840,P3D);
  rotx=radians(90);
  roty=radians(90);
}
void draw(){
  background(255);
  noFill();
  strokeWeight(3);
  ball(500,100,0,#C63A3A,200);
cube(500,700,0,#C63A3A,200);
cube(900,500,100,#C63A3A,200);
}

void mouseDragged(){
  rotx=rotx+(pmouseY-mouseY)*0.01;
   roty=roty+(pmouseX-mouseX)*-0.01;
}

void cube(float x, float y, float z, color c,float size){
  pushMatrix();
   translate(x,y,z);
  fill(c);
  strokeWeight(10);
  rotateX(rotx);
  rotateY(roty);
  box(size,size,size);
  popMatrix();
}
void ball(float x, float y, float z, color c,float size){
  pushMatrix();
   translate(x,y,z);
  fill(c);
  strokeWeight(10);
  rotateX(rotx);
  rotateY(roty);
  sphere(size);
  popMatrix();
}
