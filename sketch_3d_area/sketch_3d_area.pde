import java.awt.Robot;
Robot rbt;
float rotx, roty,x1,y1,z1;
color black=#000000;
color white=#FFFFFF;
color red=#ED1C24;
color blue= #7092BE;
boolean wkey, akey, skey, dkey,qkey;
int score;
boolean all;
PVector zz;
ArrayList<GameObject>objects;

PImage[] gif;


int jk;




 int lmnop;
int gridsize;
PImage map;

PImage dia, dirt, top, side,stone ;

float eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ, leftRightHeadAngle, upDownHeadAngle;
void setup() {
  //size(1440,840,P3D);
   lmnop=0;
  fullScreen(P3D);
  textureMode(NORMAL);
  wkey=skey=akey=dkey=false;
  eyeX=width/2;
  eyeY=9*height/10;
  eyeZ=0;
  focusX=width/2;
  focusY=height/2;
  focusZ=10;
  tiltX=0;
  tiltY=1;
  tiltZ=0;
  noCursor();
  leftRightHeadAngle=radians(45);
  
zz=new PVector(0,1000,0);

objects=new ArrayList <GameObject>();
  gridsize=100;
  map=loadImage("3dmap.png");
  dia=loadImage("Diamond.png");
  top=loadImage("GrassBlockTop.png");
  dirt=loadImage("dirt.png");
  side=loadImage("Grass_Block_Side.png");
  stone=loadImage("Stone_Bricks.png");
  try {
    rbt=new Robot();
  }
  catch(Exception e) {
    e.printStackTrace();
  }
  
  
  
  
   gif=new PImage[50];
  for (int n=0; n<50; n++) {
    gif[n]= loadImage ("frame_"+n+"_delay-0.04s.gif");
    gif[n].resize(gridsize, gridsize);
  } 
  
  
  
  
  
  
  
}


void draw() {
  
//println(jk);
  background(0);
  pointLight(255, 255, 255, eyeX, eyeY, eyeZ);
  camera(eyeX, eyeY, eyeZ, focusX, focusY, focusZ, tiltX, tiltY, tiltZ);
  drawFloor(-2000, 2000, height, gridsize);
  //drawFloor(-2000, 2000, height-gridsize*3, gridsize);
  drawFocus();
  controlCamera();
  drawmap();
  shoot();
  int i=0;
  while(i<objects.size()){
    GameObject obj= objects.get(i);
    obj.act();
    obj.show();
    if (obj.lives==0){
      objects.remove(i);
    }else{
      i++;
    }
  }
  for(int t=0;t<1;t++){
     
  }
  
  
  
  
}


void keyPressed() {
  if ( key == 'q' || key =='Q') qkey= true;
  if ( key == 'w' || key =='W') wkey= true;
  if ( key == 's' || key =='S')skey=true;
  if ( key == 'd' || key =='D') dkey= true;
  if ( key == 'a' || key =='A')akey=true;
}

void keyReleased() {

   if ( key == 'q' || key =='Q') qkey= false;
  if ( key == 'w' || key =='W') wkey= false;
  if ( key == 's' || key =='S')skey=false;
  if ( key == 'd' || key =='D') dkey= false;
  if ( key == 'a' || key =='A')akey=false;
}

void drawFloor(int start, int end, int level, int gap) {

  stroke(255);
  strokeWeight(1);
  int x=start;
  int z=start;
  while (z<end) {
    boxy(x, level, z, top, gap);
    x=x+gap;
    if (x>=end)
    {
      z=z+gap;
      x=start;
    }
  }
}

void controlCamera() {

  if (wkey&&canmovef()) {
    eyeX=eyeX+cos(leftRightHeadAngle)*10;
    ;
    eyeZ=eyeZ+sin(leftRightHeadAngle)*10;
    ;
  }
  if (skey&&canmoveb()) {

    eyeX=eyeX-cos(leftRightHeadAngle)*10;
    ;
    eyeZ=eyeZ-sin(leftRightHeadAngle)*10;
    ;
  }
  if (akey&&canmovel()) {
    eyeX=eyeX-cos(leftRightHeadAngle+PI/2)*10;
    ;
    eyeZ=eyeZ-sin(leftRightHeadAngle+PI/2)*10;
    ;
  }
  if (dkey&&canmover()) {
    eyeX=eyeX-cos(leftRightHeadAngle-PI/2)*10;
    ;
    eyeZ=eyeZ-sin(leftRightHeadAngle-PI/2)*10;
    ;
  }

  leftRightHeadAngle=leftRightHeadAngle+(mouseX-pmouseX)*0.005;
  upDownHeadAngle=upDownHeadAngle+(mouseY-pmouseY)*0.005;

  if (upDownHeadAngle>PI/2.5)upDownHeadAngle=PI/2.5;
  if (upDownHeadAngle<-PI/2.5)upDownHeadAngle=-PI/2.5;
  focusX=eyeX+cos(leftRightHeadAngle)*300;
  ;
  focusZ=eyeZ+sin(leftRightHeadAngle)*300;
  focusY=eyeY+tan(upDownHeadAngle)*300;


  if (mouseX>width-2)rbt.mouseMove(3, mouseY);
  else if (mouseX<2) rbt.mouseMove(width-2, mouseY);
}

void drawFocus() {
  pushMatrix();
  translate(focusX, focusY, focusZ);
  sphere(5);

  popMatrix();
}

void drawmap() {
  for (int x=0; x<map.width; x++) {
    for (int y=0; y<map.height; y++) {
      color c= map.get(x, y);
      if (c==blue) {
        boxy(x*gridsize-2000, height-gridsize, y*gridsize-2000, dia, gridsize);
        boxy(x*gridsize-2000, height-gridsize*2, y*gridsize-2000, dia, gridsize);
      }
      if (c==black) {
        boxy(x*gridsize-2000, height-gridsize, y*gridsize-2000, dirt, gridsize);
        boxy(x*gridsize-2000, height-gridsize*2, y*gridsize-2000, dirt, gridsize);
      }if(c==red){
        zz.x=x*gridsize-2000;
        zz.z=y*gridsize-2000;
        zz.y=height-gridsize;
       // zz.z=z;
objects.add(new targ(zz));
  
      }
    
    
        
        
        
      }
    }
  }


boolean canmovef() {
  float fwdx, fwdy, fwdz,fwdlp;
  int mapx, mapy,mapd;
  fwdx=eyeX+cos(leftRightHeadAngle+radians(35))*210;
    fwdlp=eyeX+cos(leftRightHeadAngle-radians(35))*210;
  fwdz=eyeZ+sin(leftRightHeadAngle)*210;
  fwdy=eyeY;
  mapx=int(fwdx+2000)/gridsize;
  mapy=int(fwdz+2000)/gridsize;
    mapd=int(fwdlp+2000)/gridsize;
  if(map.get(mapx,mapy)==white&&map.get(mapd,mapy)==white){
    return true;
  }else{
    return false;
  }
}
boolean canmover() {
  float rx, ry, rz,rl,rr;
  int mapx, mapy,maps,mapl;
   rr=eyeX+cos(leftRightHeadAngle+radians(90))*210;
  rx=eyeX+cos(leftRightHeadAngle+radians(45))*210;
   rl=eyeX+cos(leftRightHeadAngle+radians(115))*210;
  rz=eyeZ+sin(leftRightHeadAngle+radians(90))*210;
  ry=eyeY;
  mapx=int(rx+2000)/gridsize;
  mapy=int(rz+2000)/gridsize;
  maps  =int(rl+2000)/gridsize;
  mapl=int(rr+2000)/gridsize;
  
  
  if(map.get(mapx,mapy)==white && map.get(maps,mapy)==white && map.get(mapl,mapy)==white){
    return true;
  }else{
    return false;
  }
}

boolean canmovel() {
   float rx, ry, rz,rl,rr;
  int mapx, mapy,maps,mapl;
   rr=eyeX+cos(leftRightHeadAngle-radians(90))*210;
  rx=eyeX+cos(leftRightHeadAngle-radians(65))*210;
   rl=eyeX+cos(leftRightHeadAngle-radians(135))*210;
  rz=eyeZ+sin(leftRightHeadAngle-radians(90))*210;
  ry=eyeY;
  mapx=int(rx+2000)/gridsize;
  mapy=int(rz+2000)/gridsize;
  maps  =int(rl+2000)/gridsize;
  mapl=int(rr+2000)/gridsize;
  
  
  if(map.get(mapx,mapy)==white && map.get(maps,mapy)==white && map.get(mapl,mapy)==white){
    return true;
  }else{
    return false;
  }
}
boolean canmoveb() {
   float rx, ry, rz,rl,rr;
  int mapx, mapy,maps,mapl;
   rr=eyeX+cos(leftRightHeadAngle-radians(180))*210;
  rx=eyeX+cos(leftRightHeadAngle-radians(155))*210;
   rl=eyeX+cos(leftRightHeadAngle-radians(205))*210;
  rz=eyeZ+sin(leftRightHeadAngle-radians(90))*210;
  ry=eyeY;
  mapx=int(rx+2000)/gridsize;
  mapy=int(rz+2000)/gridsize;
  maps  =int(rl+2000)/gridsize;
  mapl=int(rr+2000)/gridsize;
  
  
  if(map.get(mapx,mapy)==white && map.get(maps,mapy)==white && map.get(mapl,mapy)==white){
    return true;
  }else{
    return false;
  }
}

void shoot(){
 
  
if (qkey==true&&lmnop<20){
  objects.add(new bullet());
lmnop=40;
  
}
 lmnop--;
  
}
