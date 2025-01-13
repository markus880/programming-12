import java.awt.Robot;
Robot rbt;
float rotx, roty;
color black=#000000;
color white=#FFFFFF;
boolean wkey, akey, skey, dkey;


int gridsize;
PImage map;

PImage dia, dirt, top, side;

float eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ, leftRightHeadAngle, upDownHeadAngle;
void setup() {
  //size(1440,840,P3D);
 fullScreen(P3D);
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
  
  gridsize=100;
  map=loadImage("3dmap.png");
  dia=loadImage("Diamond.png");
  top=loadImage("GrassBlockTop.png");
  dirt=loadImage("dirt.png");
  side=loadImage("Grass_Block_Side.png");
  try{
    rbt=new Robot();
  }catch(Exception e){
    e.printStackTrace();
  }
}


void draw() {
  background(0);
  camera(eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ);
  drawFloor();
    drawFocus();
  controlCamera();
  drawmap();

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
    line(x, height, -2000, x, height, 2000);
    line(-2000, height, x, 2000, height, x);
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
 
 
 if(mouseX>width-2)rbt.mouseMove(3,mouseY);
 else if(mouseX<2) rbt.mouseMove(width-2,mouseY);
}

void drawFocus() {
  pushMatrix();
  translate(focusX, focusY, focusZ);
  sphere(5);

  popMatrix();
}

void drawmap(){
  for(int x=0;x<map.width;x++){
    for(int y=0; y<map.height; y++){
      color c= map.get(x,y);
      if(c!=white){
       boxy(x*gridsize-2000,height-gridsize,y*gridsize-2000,dia,gridsize);
              boxy(x*gridsize-2000,height-gridsize*2,y*gridsize-2000,dia,gridsize);
      }
    }
  }
  
}
