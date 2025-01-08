PImage dia, dirt, top, side;

float rotx, roty;


void setup() {
  size(1440, 840, P3D);
  dia=loadImage("Diamond.png");
  top=loadImage("GrassBlockTop.png");
  dirt=loadImage("dirt.png");
  side=loadImage("Grass_Block_Side.png");
  noStroke();
  textureMode(NORMAL);
}
void draw() {
  background(0);
  pushMatrix();
  translate(width/2, height/2, 0);
scale(200);
rotateX(rotx);
rotateY(roty);
  beginShape(QUADS);
  texture(top);
  //top
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 0, 1, 1, 1);
  vertex(0, 0, 1, 0, 1);
  endShape();
  beginShape(QUADS);
  texture(dirt);
  //bottom
  vertex(0, 1, 0, 0, 0);
  vertex(1, 1, 0, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);
  endShape();

  beginShape(QUADS);
  texture(side);
  //front
  vertex(0, 0, 1, 0, 0);
  vertex(1, 0, 1, 1, 0);
  vertex(1, 1, 1, 1, 1);
  vertex(0, 1, 1, 0, 1);


  //back
  vertex(0, 0, 0, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(0, 1, 0, 0, 1);


  //left
  vertex(1, 0, 1, 0, 0);
  vertex(1, 0, 0, 1, 0);
  vertex(1, 1, 0, 1, 1);
  vertex(1, 1, 1, 0, 1);




  //right
  vertex(0, 0, 1, 0, 0);
  vertex(0, 0, 0, 1, 0);
  vertex(0, 1, 0, 1, 1);
  vertex(0, 1, 1, 0, 1);



  endShape();
  popMatrix();
}

void mouseDragged() {
  rotx=rotx+(pmouseY-mouseY)*0.01;
  roty=roty+(pmouseX-mouseX)*-0.01;
}
