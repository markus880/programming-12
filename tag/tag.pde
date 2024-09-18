import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer boing, count, games, intros, chaching;

int mode;
final int intro=0;
final int game=1;
final int gameover= 2;
float p1x, p1y, p2x, p2y, walkp1, walkp2,armp1,t,rotatep1,rotatep2,armp2,q,k,k1;
int p1score, p2score;
PImage tag,bar,hut, well, grass;
boolean wkey, skey, akey, dkey, upkey, downkey, lkey, rkey, noit, p1winning, p2winning, p1wins, p2wins,movep1,movep2;


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
  p1score=p2score=0;
  walkp1=walkp2=201;
  armp1=0;
  q=1;
  k=2;
  armp2=0;
  k1=2;
  
   minim = new Minim(this);
   
    boing = minim.loadFile("boing.mp3");
  
     count = minim.loadFile("count.mp3");
     games= minim.loadFile("game.mp3");
        intros= minim.loadFile("intro.mp3");
         chaching = minim.loadFile("chaching.mp3");
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
rotate(rotatep1);
  circle(0,0,60);
  ellipse(armp1,20,50,20);
  ellipse(-armp1,-20,50,20);
   t=t+1;
   if(movep1==true){
   armp1=armp1-k;
   if(armp1<-8){
     k=k*-1;
   }if(armp1>8){
     k=k*-1;
   }
   }
  popMatrix();
  
}
void p2(float x, float y){
  pushMatrix();
translate(x,y);
rotate(rotatep2);
  circle(0,0,60);
  ellipse(armp2,20,50,20);
  ellipse(-armp2,-20,50,20);
  
     if(movep2==true){
   armp2=armp2-k1;
   if(armp2<-8){
     k1=k1*-1;
   }if(armp2>8){
     k1=k1*-1;
   }
   }
  
  
  
  
  
   t=t+1;
  popMatrix();
  
}
