import fisica.*;

PImage [] idle;
PImage[] jump;
PImage[]run;
PImage[] action;
PImage[] goomba;
float e=1;

PImage grass,brick, dirt,spike,ice,bridge,rail;


int lives,game,over,intro,mode,playerd;
FWorld world;
FPlayer player;
ArrayList<FGameObject> terrain;
color black= #000000;
color green= #B5E61D;
color brown= #B97A57;
color blue= #99D9EA;
color red= #ED1C24;
color grey= #C3C3C3;
color pink= #FFAEC9;
color yellow= #FFF200;
PImage map;
int gridSize=60;
float zoom=1.5;

ArrayList<FGameObject> enemies;

boolean wkey, skey, akey, dkey, upkey, downkey, lkey, rkey;
int frame= 0;
void setup() {
  game=0;
  intro=1;
  over=2;
  mode=game;
  playerd=0;
  
  
  
  
  rail= loadImage("rail.png");
  spike=loadImage("spike.png");
  dirt= loadImage("dirt.jpg");
  brick = loadImage("brick.jpg");
   grass= loadImage("grasstext.jpg");
   bridge= loadImage("bridge.png");
   ice= loadImage("Ice.png");
  grass.resize(gridSize,gridSize);
  brick.resize(gridSize,gridSize);
  dirt.resize(gridSize, gridSize);  
  spike.resize(gridSize, gridSize);
  ice.resize(gridSize, gridSize);
  bridge.resize(gridSize,gridSize);
  rail.resize(gridSize , gridSize);
  
  
  
  
  lives=3;
  terrain= new ArrayList<FGameObject>();
    enemies= new ArrayList<FGameObject>();
  size(1440, 840);
  Fisica.init(this);

  goomba=new PImage[8];

  goomba[0]=loadImage("aframe_0_delay-0.16s (1).gif");
  goomba[1]=loadImage("aframe_0_delay-0.16s (2).gif");
  goomba[2]=loadImage("aframe_0_delay-0.16s (3).gif");
  goomba[3]=loadImage("aframe_0_delay-0.16s (4).gif");
  goomba[4]=loadImage("aframe_0_delay-0.16s (5).gif");
  goomba[5]=loadImage("aframe_0_delay-0.16s (6).gif");
  goomba[6]=loadImage("aframe_0_delay-0.16s (7).gif");
  goomba[7]=loadImage("aframe_0_delay-0.16s (8).gif");
  for(int p=0;p<8;p++){
    goomba[p].resize(gridSize,gridSize);
  }

  idle= new PImage[1];

  idle[0]= loadImage("frame_02_delay-0.08s.png");
  idle[0].resize(gridSize,gridSize);

  jump= new PImage[1];
  jump[0]= loadImage("frame_04_delay-0.08s.png");
  jump[0].resize(gridSize,gridSize);

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

  run[0].resize(gridSize,gridSize);
  run[1].resize(gridSize,gridSize);
  run[2].resize(gridSize,gridSize);
  run[3].resize(gridSize,gridSize);
  run[4].resize(gridSize,gridSize);
  run[5].resize(gridSize,gridSize);
  run[6].resize(gridSize,gridSize);
  run[7].resize(gridSize,gridSize);
  run[8].resize(gridSize,gridSize);
  run[9].resize(gridSize,gridSize);
  run[10].resize(gridSize,gridSize);
  run[11].resize(gridSize,gridSize);



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



 
  println(lives);
  
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

void actWorld() {

  player.act();
  for (int i = 0; i< terrain.size(); i++) {
    FGameObject t= terrain.get(i);
    t.act();
  }

  for (int i = 0; i< enemies.size(); i++) {
    FGameObject e= enemies.get(i);
    e.act();
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
  world.setGravity(0, 1100);



  for (int y = 0; y< map.height; y++) {

    for (int x=0; x< map.width; x++) {
      color c = map.get(x, y);
      if (c == black && img.get(x,y-1)== black) {

        FBox b = new FBox(gridSize, gridSize);
        b.setPosition(x*gridSize, y*gridSize);
        b.setStatic(true);
        b.setGrabbable(false);
        b.setFriction(6);
      
        b.attachImage(dirt);
        b.setName("stone");
        world.add(b);
      }else if(c==black){
            FBox b = new FBox(gridSize, gridSize);
        b.setPosition(x*gridSize, y*gridSize);
        b.setStatic(true);
        b.setGrabbable(false);
        b.setFriction(6);
        
        b.attachImage(grass);
          b.setName("stone");
        world.add(b);
      }
      if (c== green) {
      }
      if (c==pink) {
        FGoomba gmb= new FGoomba(x*gridSize, gridSize);
        enemies.add(gmb);
        world.add(gmb);
      }
      if (c==red) {
        FBox b = new FBox(gridSize, gridSize);
    
        b.setPosition(x*gridSize, y*gridSize);
        b.setStatic(true);
        b.setGrabbable(false);
        b.setFriction(4);
        b.attachImage(spike);
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
      if (c==yellow) {
        FBox b = new FBox(gridSize, gridSize);
         b.attachImage(dirt);
        b.setPosition(x*gridSize, y*gridSize);
        b.setStatic(true);
        b.setGrabbable(false);
        b.setFriction(1);
        b.setName("wall");
        world.add(b);
      }
      if (c==blue) {
        FBox b = new FBox(gridSize, gridSize);
        b.setFillColor(blue);
        b.setPosition(x*gridSize, y*gridSize);
        b.setStatic(true);
        b.setGrabbable(false);
        b.setFriction(0.5);
             b.attachImage(ice);
        b.setName("ice");
        world.add(b);
      }
    }
  }
}
