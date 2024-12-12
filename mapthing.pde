import fisica.*;

PImage [] idle;
PImage[] jump;
PImage[]run;
PImage[] action;
PImage[] goomba;
PImage[] lava;
PImage[] wiz;
PImage[]spe;
float e=1;
float tp=0;

int kladdy = 0;

float respx, respy, tp1x, tp1y, tp2x, tp2y, ll;
PImage grass, brick, dirt, spike, ice, bridge, rail, sleep, attack, trampo, background, tele, shell, nograss, ghost, sl;

boolean switchy;
int lives, game, over, intro, mode, playerd, l2;
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
color dgreen = #22B14C;
color purple= #A349A4;
color dblue= #3F48CC;
color orange= #FF7F27;
color dpink= #EE8AF8;
color maroon= #75163F;
color beige= #EFE4B0;
color dbrown= #880015;
color block=#886F72;
color aqua =#75EACC;
color greyblue=#7092BE;
PImage map;
int gridSize=32;
float zoom=2;




ArrayList<FGameObject> enemies;
ArrayList<FGameObject> bullets;

boolean wkey, skey, akey, dkey, upkey, downkey, lkey, rkey;
int frame= 0;

void setup() {
  ll=0;
  game=0;
  l2=1;
  intro=3;
  over=4;
  mode=l2;
  playerd=0;




  switchy= false;
  shell=loadImage("shell.png");
  ghost=loadImage("ghost.png");
  background=loadImage("background.jpg");
  trampo=loadImage("trampoline.png");
  sleep=loadImage("thwomp0.png");
  attack=loadImage("thwomp1.png");
  rail= loadImage("rail.png");
  spike=loadImage("spike.png");
  dirt= loadImage("dirt.jpg");
  brick = loadImage("brick.jpg");
  grass= loadImage("grasstext.jpg");
  bridge= loadImage("bridge.png");
  ice= loadImage("Ice.png");
  tele=loadImage("tp.png");
  tele.resize(gridSize, gridSize);
  attack.resize(gridSize, gridSize);
  sleep.resize(gridSize, gridSize);
  grass.resize(gridSize, gridSize);
  brick.resize(gridSize, gridSize);
  dirt.resize(gridSize, gridSize);
  spike.resize(gridSize, gridSize);
  ice.resize(gridSize, gridSize);
  bridge.resize(gridSize, gridSize);
  rail.resize(gridSize, gridSize);
  trampo.resize(gridSize, gridSize);
  shell.resize(gridSize, gridSize-10);
  nograss= loadImage("grassoff.jpg");
  nograss.resize(gridSize, gridSize);
  ghost.resize(gridSize, gridSize);

  respx=respy=0;


  spe=new PImage[64];
  for (int n=0; n<64; n++) {
    spe[n]= loadImage ("frame_"+n+"_delay-0.03s.gif");
    spe[n].resize(gridSize, gridSize);
  }


  wiz=new PImage[6];
  for (int n=0; n<6; n++) {
    wiz[n]= loadImage ("frame_"+n+"_delay-0.11s.png");
    wiz[n].resize(gridSize, gridSize);
  }

  lives=3;
  terrain= new ArrayList<FGameObject>();
  enemies= new ArrayList<FGameObject>();
  bullets=new ArrayList<FGameObject>();
  size(1440, 840);
  Fisica.init(this);

  lava=new PImage[35];

  for (int n=0; n<35; n++) {
    lava[n]= loadImage ("frame_"+n+"_delay-0.07s.gif");
    lava[n].resize(gridSize, gridSize);
  }




  goomba=new PImage[8];

  goomba[0]=loadImage("aframe_0_delay-0.16s (1).gif");
  goomba[1]=loadImage("aframe_0_delay-0.16s (2).gif");
  goomba[2]=loadImage("aframe_0_delay-0.16s (3).gif");
  goomba[3]=loadImage("aframe_0_delay-0.16s (4).gif");
  goomba[4]=loadImage("aframe_0_delay-0.16s (5).gif");
  goomba[5]=loadImage("aframe_0_delay-0.16s (6).gif");
  goomba[6]=loadImage("aframe_0_delay-0.16s (7).gif");
  goomba[7]=loadImage("aframe_0_delay-0.16s (8).gif");
  for (int p=0; p<8; p++) {
    goomba[p].resize(gridSize, gridSize);
  }

  idle= new PImage[1];

  idle[0]= loadImage("frame_02_delay-0.08s.png");
  idle[0].resize(gridSize, gridSize);

  jump= new PImage[1];
  jump[0]= loadImage("frame_04_delay-0.08s.png");
  jump[0].resize(gridSize, gridSize);

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

  run[0].resize(gridSize, gridSize);
  run[1].resize(gridSize, gridSize);
  run[2].resize(gridSize, gridSize);
  run[3].resize(gridSize, gridSize);
  run[4].resize(gridSize, gridSize);
  run[5].resize(gridSize, gridSize);
  run[6].resize(gridSize, gridSize);
  run[7].resize(gridSize, gridSize);
  run[8].resize(gridSize, gridSize);
  run[9].resize(gridSize, gridSize);
  run[10].resize(gridSize, gridSize);
  run[11].resize(gridSize, gridSize);



  action = idle;






  map = loadImage("mapy.png");
  sl=loadImage("2.png");

  // loadworld(map);

  //  loadplayer();
}



void loadplayer() {
  player = new FPlayer(respx, respy);
  world.add(player);
}
void draw() {





  if ( mode==game) {
    game();
  }
  if (mode==l2) {
    secondlev();
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

  world = new FWorld(-2000, -2000, 200000, 2000);
  world.setGravity(0, 900);
    terrain= new ArrayList<FGameObject>();
  enemies= new ArrayList<FGameObject>();



  for (int y = 0; y< img.height; y++) {

    for (int x=0; x< img.width; x++) {
      color c = img.get(x, y);


      if (c == black && img.get(x, y-1)== black) {

        FBox b = new FBox(gridSize, gridSize);
        b.setPosition(x*gridSize, y*gridSize);
        b.setStatic(true);
        b.setGrabbable(false);
        b.setFriction(6);

        b.attachImage(grass);
        b.setName("stone");
        world.add(b);
      } else if (c==black) {
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

        Fjeff jf=new Fjeff(x*gridSize, y*gridSize);
        enemies.add(jf);
        world.add(jf);
      }
      if (c==pink) {
        FGoomba gmb= new FGoomba(x*gridSize, y*gridSize);
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
        Flava la= new Flava(x*gridSize, y*gridSize);

        terrain.add(la);
        world.add(la);
      }
      if (c==yellow) {
        FBox b = new FBox(gridSize, gridSize);
        b.attachImage(grass);
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
      if (c== purple) {
        fswitch sw= new fswitch(x*gridSize, y*gridSize);

        terrain.add(sw);
        world.add(sw);
      }
      if (c==dgreen) {
        fpoint fp= new fpoint(x*gridSize, y*gridSize);
        terrain.add(fp);
        world.add(fp);
      }
      if (c==dblue) {
        ftramp tr= new ftramp(x*gridSize, y*gridSize);
        terrain.add(tr);
        world.add(tr);
      }
      if (c==orange) {
        ftp tp= new ftp(x*gridSize, y*gridSize);
        terrain.add(tp);
        world.add(tp);
      }
      if (c==dpink) {
        ftp2 tp2= new ftp2(x*gridSize, y*gridSize);
        terrain.add(tp2);
        world.add(tp2);
      }
      if (c==maroon) {
        Fshellg sg= new Fshellg(x*gridSize, y*gridSize);
        enemies.add(sg);
        world.add(sg);
      }
      if (c==beige) {

        fwomp wp= new fwomp(x*gridSize, y*gridSize);

        enemies.add(wp);
        world.add(wp);
      }
      if (c==dbrown) {
        Fboo bo= new Fboo(x*gridSize, y*gridSize);

        enemies.add(bo);
        world.add(bo);
      }

      if (c==block) {
        blocks bl= new blocks(x*gridSize, y*gridSize);
        terrain.add(bl);
        world.add(bl);
      }
      if (c==aqua) {
        wally wa= new wally(x*gridSize, y*gridSize);
        terrain.add(wa);
        world.add(wa);
      }
      if (c==greyblue) {
        newl nl= new newl(x*gridSize, y*gridSize);
        terrain.add(nl);
        world.add(nl);
      }
    }
  }
}
