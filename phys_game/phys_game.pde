
color grey = #9B9393;
import fisica.*;
boolean wkey, skey, akey, dkey, upkey, downkey, lkey, rkey;
float a;
int p1s,p2s;
FWorld world;
FBox p1, p2,n1,n2,post;
FCircle ball;


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
netcols();
scroes();


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
  p1.setFriction(1);
  p1.setRestitution(.7);
    

  world.add(p1);
  
  
     p2 = new FBox(100, 100);
  p2.setPosition(3*width/4, height/2);
  p2.setDensity(0.2);
  p2.setFriction(1);
  p2.setRestitution(.7);

  world.add(p2);
  
  ball = new FCircle(100);
  ball.setPosition(width/2, height/2);
  ball.setDensity(0.2);
  ball.setFriction(1);
  ball.setRestitution(1.5);  
  world.add(ball);
  
  n1= new FBox(100,440);
    n1.setPosition(0, height/2);
  n1.setStatic(true);
  
  world.add(n1);
  


  n2= new FBox(100,440);
    n2.setPosition(width, height/2);
  n2.setStatic(true);
  
  world.add(n2);
  
  post(0,0);
}

void handleplayerintput() {
  
  float p1vx = p1.getVelocityX();
   float p1vy = p1.getVelocityY();
    float p2vx = p2.getVelocityX();
   float p2vy = p2.getVelocityY();
  if (dkey==true){
  p1.setVelocity(100,p1vy);
  }
  
  if (akey==true){
  p1.setVelocity(-100,p1vy);
  }
  
  
    if (rkey==true){
  p2.setVelocity(100,p2vy);
  }
  
  if (lkey==true){
  p2.setVelocity(-100,p2vy);
  }
  if (wkey==true){
  p1.setVelocity(p1vx,-100);
  }
   if (skey==true){
  p1.setVelocity(p1vx,100);
  }
  
   if (upkey==true){
  p2.setVelocity(p2vx,-100);
  }
  if (downkey==true){
  p2.setVelocity(p2vx,100);
  }
  
  
}


boolean hitn(FBox n){
 ArrayList<FContact>contactList = ball.getContacts();
 int i= 0;
 while(i<contactList.size()){
   FContact myContact= contactList.get(i);
   if(myContact.contains(n))
   return true;
   i++;
 }
 return false;
 
}

void netcols(){
  if(hitn(n1)){
    p2s++;
    reset();
  }
  
    if(hitn(n2)){
    p1s++;
   reset();
  }
}

void scroes(){
  textSize(100);
  textAlign(CENTER, CENTER);
  text(p1s,200,200);
   text(p2s,1240,200);
}
void reset(){
   p1.setPosition(width/4, height/2);
   p2.setPosition(3*width/4, height/2);
     ball.setPosition(width/2, height/2);
    p1.setVelocity(0,0);   
         p2.setVelocity(0,0);   
         ball.setVelocity(0,0);   
}

void post(float x,float y){

   post= new FBox(100,50);
   post.setFillColor(grey);
    post.setPosition(0, height/2+25+220);
  post.setStatic(true);
  
  world.add(post);
  
  
  
  
}
