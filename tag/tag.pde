int mode;
final int intro=0;
final int game=1;
final int gameover= 2;
float p1x, p1y, p2x, p2y, w1, w2,m,t,r1,r2,m1,q;
int p1s, p2s;
PImage tag,bar,hut, well, grass;
boolean wkey, skey, akey, dkey, upkey, downkey, lkey, rkey, noit, p1w, p2w, p1ws, p2ws,mv1,mv2;


void setup() {
  size(1440, 840);
  tag= loadImage("tag.jpg");
  bar= loadImage("barrel.png");
  hut= loadImage("hut.png");
  well= loadImage("well.png");
  grass= loadImage("grass.jpg");
  grass.resize(1440,840);
  well.resize(330,330);
  hut.resize(330,330);
  bar.resize(80,80);
  wkey=skey=akey=dkey= upkey= downkey=lkey=rkey=false;
  p1x=50;
  p1y= p2y=420;
  p2x= 1390;
  noit=true;
  p1s=p2s=0;
  w1=w2=201;
  m=7;
  q=1;
}



void draw() {

  if (mode == intro) {
    intro();
  } else if (mode == game) {
    game();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("Error: Mode = " + mode);
  }
}


void obs(int x, int y, int r) {
  circle(x, y, r);
  if (dist(p1x, p1y, x, y)<r/2+30) {
    p1x= p1x+.15*(p1x-x);
    p1y= p1y+.15*(p1y-y);
  }
  if (dist(p2x, p2y, x, y)<r/2+30) {
    p2x= p2x+.15*(p2x-x);
    p2y= p2y+0.15*(p2y-y);
  }
}

void p1(float x, float y){
  pushMatrix();
translate(x,y);
rotate(r1);
  circle(0,0,60);
  ellipse(m,20,50,20);
  ellipse(-m,-20,50,20);
   t=t+1;
  popMatrix();
  
}
void p2(float x, float y){
  pushMatrix();
translate(x,y);
rotate(r2);
  circle(0,0,60);
  ellipse(m,20,50,20);
  ellipse(-m,-20,50,20);
   t=t+1;
  popMatrix();
  
}
