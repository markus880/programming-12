import fisica.*;
boolean wkey, skey, akey, dkey, upkey, downkey, lkey, rkey; 
float a; 
FWorld world;
void setup(){
  size(1440,840);
  createworld();
  createbodies();
  
  
}

void draw(){
  
  p1();
  p2();
  
}

void createworld(){
  
 Fisica.init(this);
  world = new FWorld();
  world.setGravity(0, 900);  
  world.setEdges();
  
}

void   createbodies(){
  
  
  
}

void handleplayerintput(){
  
  p1.setVolocity(100,0);
  
}
