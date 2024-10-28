import fisica.*;

FWorld world;
color black= #000000;
PImage map;
int gridSize=32;

boolean wkey, skey, akey, dkey, upkey, downkey, lkey, rkey;

void setup() {
  size(1440, 840);
  Fisica.init(this);
  
  map = loadImage("map1.png");
  
  loadworld(map);
  background(255);
  
}


void draw() {
  
  world.step();
  world.draw();
}

void loadworld(PImage img){
  
  world = new FWorld(-2000, -2000, 2000, 2000);
  world.setGravity(0, 900);
  
  
  
  for (int y = 0; y< map.height; y++) {

    for (int x=0; x< map.width; x++) {
      color c = map.get(x, y);
      if (c == black) {
        println("?");
        FBox b = new FBox(gridSize, gridSize);
        b.setPosition(x*gridSize, y*gridSize);
        b.setStatic(true);
        b.setGrabbable(false);
        world.add(b);
      }
    }
  }
}
