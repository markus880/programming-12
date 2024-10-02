class mover{
  
  PVector location;
 PVector velo;
  float d;
  
  mover(){
    
   d= 100;
   location= new PVector (random(0,width), random(0,height));
 velo = new PVector (3,0);
  velo.rotate(radians(random(0,360)));
  }
  
  void act(){
  move();
  bouncein();
  }
  
  void move(){
location.add(velo);

  }
  
  void bouncein(){
   if(location.x<0 || location.x>width) velo.x=-velo.x;
   if(location.y<0 || location.y>height) velo.y = -velo.y;
    
  }
  
  
 void showbody(){
   noStroke();
   fill(0,255,0);
   circle(location.x,location.y,d);
 }
 
 void showlines(){
   
   int i = 0;
   while(i< nummovers){
    float dist = dist(location.x,location.y, movers[i].location.x, movers[i].location.y);
    if (dist <= 200){
      float a = map(dist,0,200,255,0);
      stroke(0,a);
      strokeWeight(2);
      line(location.x,location.y,movers[i].location.x, movers[i].location.y);
    }
    i++;
   }
   
   
   
 }
  
  
  
  
  
  
  
  
  
  
  
  
  
}
