
color grey = #9B9393;
import fisica.*;
boolean wkey, skey, akey, dkey, upkey, downkey, lkey, rkey;
float a, t,v1,v2;
int p1s, p2s, mode, game, intro, over;
FWorld world;
FBox p1, p2, n1, n2, post, post1, post2, post3;
FCircle ball, ast;
PImage space,sp;


void setup() {
  size(1440, 840);
int t= 0;
  space = loadImage("r.png");
   sp = loadImage("r1.png");
  space.resize(100, 100);
  sp.resize(100, 100);

  createworld();
  createbodies();
  game=0;
  intro=1;
  over=2;
  mode=intro;
  v1=v2=400;
}

void draw() {
  background(0);

  world.step();
  world.draw();


  if ( mode==game) {
    game();
  }
  if (mode==over) {
    gameover();
  }
  if (mode==intro) {
    intro();
  }
}

void createworld() {

  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0, 0);
  world.setEdges();
}

void   createbodies() {
  p1 = new FBox(100, 100);
  p1.setStatic(false);

  p1.setPosition(width/4, height/2);
  p1.setDensity(0.2);
  p1.attachImage(space);

  p1.setFriction(1);
  p1.setRestitution(.7);
  p1.setGrabbable(false);


  world.add(p1);


  p2 = new FBox(100, 100);
  p2.setPosition(3*width/4, height/2);
  p2.setDensity(0.2);
  p2.setFriction(1);
  p2.setRestitution(.7);
  p2.setGrabbable(false);
  p2.attachImage(sp);

  world.add(p2);

  ball = new FCircle(100);
  ball.setPosition(width/2, height/2);
  ball.setDensity(0.2);
  ball.setFriction(1);
  ball.setRestitution(1.5);
  world.add(ball);
  ball.setGrabbable(false);

  n1= new FBox(100, 440);
  n1.setPosition(0, height/2);
  n1.setStatic(true);
  n1.setGrabbable(false);

  world.add(n1);



  n2= new FBox(100, 440);
  n2.setPosition(width, height/2);
  n2.setStatic(true);
  n2.setGrabbable(false);

  world.add(n2);

  post(0, 0);

  ast= new FCircle(150);
  ast.setPosition(random(100, 1340), random(100, 740));
  ast.setFriction(0);
  ast.setRestitution(1.01);
 
  world.add(ast);
}

void handleplayerintput() {




  float p1vx = p1.getVelocityX();
  float p1vy = p1.getVelocityY();
  float p2vx = p2.getVelocityX();
  float p2vy = p2.getVelocityY();
  
  if(v1>249){
  if (dkey==true) {
    p1.setVelocity(100, p1vy);
  }

  if (akey==true) {
    p1.setVelocity(-100, p1vy);
  }
   if (wkey==true) {
    p1.setVelocity(p1vx, -100);
  }
  if (skey==true) {
    p1.setVelocity(p1vx, 100);
  }
  }

if(v2>249){

  if (rkey==true) {
    p2.setVelocity(100, p2vy);
  }

  if (lkey==true) {
    p2.setVelocity(-100, p2vy);
  }
 

  if (upkey==true) {
    p2.setVelocity(p2vx, -100);
  }
  if (downkey==true) {
    p2.setVelocity(p2vx, 100);
  }
}
}


boolean hitn(FBox n) {
  ArrayList<FContact>contactList = ball.getContacts();
  int i= 0;
  while (i<contactList.size()) {
    FContact myContact= contactList.get(i);
    if (myContact.contains(n))
      return true;
    i++;
  }
  return false;
}

void netcols() {
  if (hitn(n1)) {
    p2s++;
    reset();
  }

  if (hitn(n2)) {
    p1s++;
    reset();
  }
}

void scroes() {
  textSize(100);
  textAlign(CENTER, CENTER);
  text(p1s, 200, 200);
  text(p2s, 1240, 200);



  if (p2s==5) {
    mode=over;
  }
  if (p1s==5) {
    mode=over;
  }
}
void reset() {
  p1.setPosition(width/4, height/2);
  p2.setPosition(3*width/4, height/2);
  ball.setPosition(width/2, height/2);
  p1.setVelocity(0, 0);
  p2.setVelocity(0, 0);
  ball.setVelocity(0, 0);
}

void post(float x, float y) {

  post= new FBox(100, 50);
  post.setFillColor(grey);
  post.setPosition(0, height/2+25+220);
  post.setStatic(true);
  post.setGrabbable(false);

  world.add(post);
  post1= new FBox(100, 50);
  post1.setFillColor(grey);
  post1.setPosition(0, height/2-25-220);
  post1.setStatic(true);
  post1.setGrabbable(false);

  world.add(post1);


  post2= new FBox(100, 50);
  post2.setFillColor(grey);
  post2.setPosition(1440, height/2-25-220);
  post2.setStatic(true);
  post2.setGrabbable(false);

  world.add(post2);

  post3= new FBox(100, 50);
  post3.setFillColor(grey);
  post3.setPosition(1440, height/2+25+220);
  post3.setStatic(true);
  post3.setGrabbable(false);
  world.add(post3);
}

boolean hitp(FBox p) {
  ArrayList<FContact>contactList = ast.getContacts();
  int i= 0;
  while (i<contactList.size()) {
    FContact myContact= contactList.get(i);
    if (myContact.contains(p))
      return true;
    i++;
  }
  return false;
}

void pcols(){
  if (hitp(p1)) {
    v1=0;
    
  }
   if (hitp(p2)) {
    v2=0;
    
  }
  
  
  
}
