//1. Make a ramp into a bucket U
//2. Make 2 clouds move across the screen, loop back at the end. one is infront and one is behind.
//3. Button that turns on and off gravity


import fisica.*;

int grav;

//pallete
color blue   = color(29, 178, 242);
color brown  = color(166, 120, 24);
color green  = color(74, 163, 57);
color red    = color(224, 80, 61);
color yellow = color(242, 215, 16);
 int cloud2= 100;
  int cloud1= 0;
//assets
PImage redBird;

//fisica
FWorld world;

void setup() {
  //make window
  fullScreen(P2D);
  redBird = loadImage("red-bird.png");
  grav=1;
  //init world
  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0, 900);

  //add terrain to world
  makeTopPlatform();
  makeBottomPlatform();
}

//=====================================================================================================================================

void draw() {
  //println("x: " + mouseX + " y: " + mouseY);
  background(blue);



 
  cloud1= cloud1+1;
  if (cloud1>1500) {
    cloud1=0;
  }

  circle(cloud1, 100, 100);



  if (frameCount % 20 == 0) {  //Every 20 frames ...
    makeCircle();
    makeBlob();
    makeBox();
    makeBird();
  }
  world.step();  //get box2D to calculate all the forces and new positions
  world.draw(); //ask box2D to convert this world to processing screen coordinates and draw

 
  cloud2= cloud2+1;
  if (cloud2>1500) {
    cloud2=0;
  }

  circle(cloud2, 100, 100);
  circle(1000, 100, 100);
  gravity();
}

//=====================================================================================================================================

void makeTopPlatform() {
  FPoly p = new FPoly();

  //plot the vertices of this platform
  p.vertex(-100, height*.1);
  p.vertex(width*0.8, height*0.4);
  p.vertex(width*0.8, height*0.4+100);
  p.vertex(-100, height*0.1+100);

  // define properties
  p.setStatic(true);
  p.setFillColor(brown);
  p.setFriction(0.1);

  //put it in the world
  world.add(p);
}

//=====================================================================================================================================

void makeBottomPlatform() {
  FPoly p = new FPoly();

  //plot the vertices of this platform
  p.vertex(width+100, height*0.6);
  p.vertex(300, height*0.8);
  p.vertex(300, height*0.8+100);
  p.vertex(width+100, height*0.6+100);

  // define properties
  p.setStatic(true);
  p.setFillColor(brown);
  p.setFriction(0);

  //put it in the world
  world.add(p);
}

//=====================================================================================================================================

void makeCircle() {
  FCircle circle = new FCircle(50);
  circle.setPosition(random(width), -5);

  //set visuals
  circle.setStroke(0);
  circle.setStrokeWeight(2);
  circle.setFillColor(red);

  //set physical properties
  circle.setDensity(0.2);
  circle.setFriction(1);
  circle.setRestitution(1);

  //add to world
  world.add(circle);
}

//=====================================================================================================================================

void makeBlob() {
  FBlob blob = new FBlob();

  //set visuals
  blob.setAsCircle(random(width), -5, 50);
  blob.setStroke(0);
  blob.setStrokeWeight(2);
  blob.setFillColor(yellow);

  //set physical properties
  blob.setDensity(0.2);
  blob.setFriction(1);
  blob.setRestitution(0.25);

  //add to the world
  world.add(blob);
}

//=====================================================================================================================================

void makeBox() {
  FBox box = new FBox(25, 100);
  box.setPosition(random(width), -5);

  //set visuals
  box.setStroke(0);
  box.setStrokeWeight(2);
  box.setFillColor(green);

  //set physical properties
  box.setDensity(0.2);
  box.setFriction(1);
  box.setRestitution(0.25);
  world.add(box);
}

//=====================================================================================================================================

void makeBird() {
  FCircle bird = new FCircle(48);
  bird.setPosition(random(width), -5);

  //set visuals
  bird.attachImage(redBird);

  //set physical properties
  bird.setDensity(0.8);
  bird.setFriction(1);
  bird.setRestitution(0.5);
  world.add(bird);
}

void gravity() {
}

void mouseReleased() {
  

  println(grav);

  if (dist(mouseX, mouseY, 1000, 100)<50) {
    grav= grav*-1;
  }
  if (grav==-1) {
    world.setGravity(0, 0);
  } else if (grav==1) {
    world.setGravity(0, 900);
  }
}
