int mode;
final int intro=0;
final int game=1;
final int gameover= 2;
float p1x, p1y, p2x, p2y, w1, w2;
int p1s, p2s;
PImage tag;
boolean wkey, skey, akey, dkey, upkey, downkey, lkey, rkey, noit, p1w, p2w, p1ws, p2ws;

void setup() {
  size(1440, 840);
  tag= loadImage("tag.jpg");
  wkey=skey=akey=dkey= upkey= downkey=lkey=rkey=false;
  p1x=50;
  p1y= p2y=420;
  p2x= 1390;
  noit=true;
  p1s=p2s=0;
  w1=w2=201;
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
    p1x= p1x+.06*(p1x-x);
    p1y= p1y+.06*(p1y-y);
  }
  if (dist(p2x, p2y, x, y)<r/2+30) {
    p2x= p2x+.06*(p2x-x);
    p2y= p2y+0.06*(p2y-y);
  }
}
