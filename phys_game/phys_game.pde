

import fisica.*;
boolean wkey, skey, akey, dkey, upkey, downkey, lkey, rkey;
float a;
FWorld world;
FBox p1, p2;

void setup() {
  size(1440, 840);
  createworld();
  createbodies();

}

void draw() {
background(0);

  world.step();
  world.draw();
handleplayerintput();
}

void createworld() {

  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0, 900);
  world.setEdges();
}

void   createbodies() {
    p1 = new FBox(100, 100);
  p1.setStatic(false);
  p1.setPosition(width/4, 700);
  p1.setDensity(0.2);
  p1.setFriction(1);
  p1.setRestitution(.1);
    

  world.add(p1);
  
  
     p2 = new FBox(100, 100);
  p2.setPosition(3*width/4, 700);
  p2.setDensity(0.2);
  p2.setFriction(1);
  p2.setRestitution(.1);

  world.add(p2);
   
}

void handleplayerintput() {
  if (dkey==true){
  p1.setVelocity(100,0);
  }
  
  if (akey==true){
  p1.setVelocity(-100,0);
  }
}
