float rotx, roty;


void setup(){
  size(1440,840,P3D);
  rotx=radians(90);
  roty=radians(90);
}
void draw(){
  background(255);
  translate(width/2,height/2,0);
  noFill();
  strokeWeight(10);
  rotateX(rotx);
  rotateY(roty);
  box(100,100,100);
  
}

void mouseDragged(){
  rotx=rotx+(pmouseY-mouseY)*0.01;
   roty=roty+(pmouseX-mouseX)*-0.01;
}
