import fisica.*;

PImage [] idle;
PImage[] jump;
PImage[]run;
PImage[] action;

FWorld world;
FPlayer player;
ArrayList<FGameObject> terrain;
color black= #000000;
color green= #B5E61D;
color brown= #B97A57;
color blue= #99D9EA;
color red= #ED1C24;
color grey= #C3C3C3;
PImage map;
int gridSize=32;
float zoom=1.5;

boolean wkey, skey, akey, dkey, upkey, downkey, lkey, rkey;
    int frame= 0;
void setup() {
  terrain= new ArrayList<FGameObject>();
  size(1440, 840);
  Fisica.init(this);
   
  idle= new PImage[1];

  idle[0]= loadImage("frame_02_delay-0.08s.png");
idle[0].resize(32,32);

  jump= new PImage[1];
  jump[0]= loadImage("frame_04_delay-0.08s.png");
jump[0].resize(32,32);

  run= new PImage[12];
  run[0]= loadImage("frame_00_delay-0.08s.png");
  run[1]= loadImage("frame_01_delay-0.08s.png");
  run[2]= loadImage("frame_02_delay-0.08s.png");
  run[3]= loadImage("frame_03_delay-0.08s.png");
  run[4]= loadImage("frame_04_delay-0.08s.png");
  run[5]= loadImage("frame_05_delay-0.08s.png");
  run[6]= loadImage("frame_06_delay-0.08s.png");
  run[7]= loadImage("frame_07_delay-0.08s.png");
  run[8]= loadImage("frame_08_delay-0.08s.png");
  run[9]= loadImage("frame_09_delay-0.08s.png");
  run[10]= loadImage("frame_010_delay-0.08s.png");
  run[11]= loadImage("frame_11_delay-0.08s.png");
  
run[0].resize(32,32);
run[1].resize(32,32);
run[2].resize(32,32);
run[3].resize(32,32);
run[4].resize(32,32);
run[5].resize(32,32);
run[6].resize(32,32);
run[7].resize(32,32);
run[8].resize(32,32);
run[9].resize(32,32);
run[10].resize(32,32);
run[11].resize(32,32);

  

action = idle;






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
  actWorld();
  player.act();
  drawworld();
}
void actWorld() {
  player.act();
  for (int i = 0; i< terrain.size(); i++) {
    FGameObject t= terrain.get(i);
    t.act();
  }
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
      if (c==red) {
        FBox b = new FBox(gridSize, gridSize);
        b.setFillColor(red);
        b.setPosition(x*gridSize, y*gridSize);
        b.setStatic(true);
        b.setGrabbable(false);
        b.setFriction(4);
        b.setName("spike");
        world.add(b);
      }
      if (c==grey) {
        FBridge br = new FBridge(x* gridSize, y*gridSize);
        terrain.add(br);
        world.add(br);
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
