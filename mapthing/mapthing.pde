import fisica.*;



FWorld world;
FPlayer player;

color black= #000000;
color green= #B5E61D;
color brown= #B97A57;
color blue= #99D9EA;
PImage map;
int gridSize=32;
float zoom=1.5;

boolean wkey, skey, akey, dkey, upkey, downkey, lkey, rkey;

void setup() {
  size(1440, 840);
  Fisica.init(this);

  map = loadImage("mapy.png");

  loadworld(map);
  loadplayer();

}



void loadplayer() {
  player = new FPlayer();
  world.add(player);
}
void draw() {
background(255);

  player.act();
  drawworld();
}

void drawworld() {


  pushMatrix();
  translate(-player.getX()*zoom+width/2, -player.getY()*zoom+height/2);
  scale(zoom);
  world.step();
  world.draw();


  popMatrix();
}

void loadworld(PImage img) {

  world = new FWorld(-2000, -2000, 2000, 2000);
  world.setGravity(0, 900);



  for (int y = 0; y< map.height; y++) {

    for (int x=0; x< map.width; x++) {
      color c = map.get(x, y);
      if (c == black) {

        FBox b = new FBox(gridSize, gridSize);
        b.setPosition(x*gridSize, y*gridSize);
        b.setStatic(true);
        b.setGrabbable(false);
        b.setFriction(6);
        b.setFillColor(black);
        b.setName("stone");
        world.add(b);
      }
      if (c== green) {
      }
      if (c==brown) {
      }
      if (c==blue) {
        FBox b = new FBox(gridSize, gridSize);
        b.setFillColor(blue);
        b.setPosition(x*gridSize, y*gridSize);
        b.setStatic(true);
        b.setGrabbable(false);
        b.setFriction(0.5);
           b.setName("ice");
        world.add(b);
      }
    }
  }
}
