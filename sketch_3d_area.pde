boolean wkey, akey, skey, dkey;

float eyeX, eyeY,eyeZ,focusX, focusY, focusZ,tiltX,tiltY,tiltZ;
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
  
  
  
  
}


void draw() {
  background(0);
 camera(eyeX,eyeY,eyeZ,focusX,focusY,focusZ,tiltX,tiltY,tiltZ);
  drawFloor();
  controlCamera();
  drawFocus();
  
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

void controlCamera(){
 
  if (wkey)eyeZ=eyeZ-3;
  if (skey)eyeZ=eyeZ+3;
  if (akey)eyeX=eyeX-3;
  if (dkey)eyeX=eyeX+3;
  
  focusX=eyeX;
   focusY=eyeY;
      focusZ=eyeZ-300;
  
}

void drawFocus(){
  pushMatrix();
  translate(focusX,focusY,focusZ);
  sphere(5);
  
  popMatrix();
  
}
