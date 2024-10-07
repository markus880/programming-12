//1. Make a ramp into a bucket U
//2. Make 2 clouds move across the screen, loop back at the end. one is infront and one is behind.
//3. Button that turns on and off gravity


import fisica.*;

button[] mybutton;
int n= 1;
    int G=1;
color pink= #FA17C9;
color orange= #FAA317;
color nims;


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
PImage redBird, soccer;

//fisica
FWorld world;

void setup() {
  //make window
  fullScreen(P2D);
  redBird = loadImage("red-bird.png");
   soccer = loadImage("R.jpg");
  grav=1;
  //init world
  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0, 900);

  //add terrain to world
 // makeTopPlatform();
  makeBottomPlatform();
  
 mybutton= new button[n];
  soccer.resize(25,100);
}

//=====================================================================================================================================

void draw() {
  //println("x: " + mouseX + " y: " + mouseY);
  background(blue);

 click();

 mybutton[0]= new button("gravity",1000,100,100,100,red,blue,false) ;
 int k= 0;

  while (k<n) {

  mybutton[k].show();
    mybutton[k].act();
     k++;
  }


 
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
  
 
}

//=====================================================================================================================================

//void makeTopPlatform() {
//  FPoly p = new FPoly();

//  //plot the vertices of this platform
//  p.vertex(-100, height*.1);
//  p.vertex(width*0.8, height*0.4);
//  p.vertex(width*0.8, height*0.4+100);
//  p.vertex(-100, height*0.1+100);

//  // define properties
//  p.setStatic(true);
//  p.setFillColor(brown);
//  p.setFriction(0.1);

//  //put it in the world
//  world.add(p);
//}

//=====================================================================================================================================




void makeBottomPlatform() {
  FPoly p = new FPoly();

  //plot the vertices of this platform
  p.vertex(100, 200);
  p.vertex(100, 300);
  p.vertex(300, 300);
  p.vertex(300,100);
    p.vertex(350,100);
 p.vertex(350,350);
  p.vertex(50,350);
    p.vertex(50,100);
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
  box.attachImage(soccer);

  //set physical properties
  box.setDensity(0.2);
  box.setFriction(1);
  box.setRestitution(12);
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
