boolean wkey, akey, skey, dkey;

float eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ, leftRightHeadAngle, upDownHeadAngle;
void setup() {
  size(1440, 840, P3D);
  textureMode(NORMAL);
  wkey=skey=akey=dkey=false;
  eyeX=width/2;
  eyeY=height/2;
  eyeZ=0;
  focusX=width/2;
  focusY=height/2;
  focusZ=10;
  tiltX=0;
  tiltY=1;
  tiltZ=0;
noCursor();
  leftRightHeadAngle=radians(45);
}


void draw() {
  background(0);
  camera(eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ);
  drawFloor();
    drawFocus();
  controlCamera();

}


void keyPressed() {

  if ( key == 'w' || key =='W') wkey= true;
  if ( key == 's' || key =='S')skey=true;
  if ( key == 'd' || key =='D') dkey= true;
  if ( key == 'a' || key =='A')akey=true;
}

void keyReleased() {

  if ( key == 'w' || key =='W') wkey= false;
  if ( key == 's' || key =='S')skey=false;
  if ( key == 'd' || key =='D') dkey= false;
  if ( key == 'a' || key =='A')akey=false;
}

void drawFloor() {

  stroke(255);
  for (int x=-2000; x<=2000; x=x+100) {
    line(x, 500, -2000, x, 500, 2000);
    line(-2000, 500, x, 2000, 500, x);
  }
}

void controlCamera() {

  if (wkey){
    eyeX=eyeX+cos(leftRightHeadAngle)*10;;
    eyeZ=eyeZ+sin(leftRightHeadAngle)*10;;
  }
  if (skey){
    
    eyeX=eyeX-cos(leftRightHeadAngle)*10;;
    eyeZ=eyeZ-sin(leftRightHeadAngle)*10;;
  }
  if (akey){
 eyeX=eyeX-cos(leftRightHeadAngle+PI/2)*10;;
    eyeZ=eyeZ-sin(leftRightHeadAngle+PI/2)*10;;   
  }
  if (dkey){
    eyeX=eyeX-cos(leftRightHeadAngle-PI/2)*10;;
    eyeZ=eyeZ-sin(leftRightHeadAngle-PI/2)*10;;    
    
  }
  
  leftRightHeadAngle=leftRightHeadAngle+(mouseX-pmouseX)*0.005;
upDownHeadAngle=upDownHeadAngle+(mouseY-pmouseY)*0.005;

if(upDownHeadAngle>PI/2.5)upDownHeadAngle=PI/2.5;
if(upDownHeadAngle<-PI/2.5)upDownHeadAngle=-PI/2.5;
  focusX=eyeX+cos(leftRightHeadAngle)*300;;
  focusZ=eyeZ+sin(leftRightHeadAngle)*300;
  focusY=eyeY+tan(upDownHeadAngle)*300;
 
}

void drawFocus() {
  pushMatrix();
  translate(focusX, focusY, focusZ);
  sphere(5);

  popMatrix();
}
