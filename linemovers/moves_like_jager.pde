class mover{
  
  float x, y;
  float vx, vy;
  float d;
  
  mover(){
    
   d= 100;
   x= random(0,width);
   y= random(0,height);
   vx= random(-1,1);
   vy= random(-1,1);
  }
  
  void act(){
  move();
  bouncein();
  }
  
  void move(){
    x=x+vx;
    y=y+vy;
  }
  
  void bouncein(){
   if(x<0 || x>width) vx=-vx;
   if(y<0 || y>height) vy = -vy;
    
  }
  
  
 void showbody(){
   noStroke();
   fill(0,255,0);
   circle(x,y,d);
 }
 
 void showlines(){
   
   int i = 0;
   while(i< nummovers){
    float dist = dist(x,y, movers[i].x, movers[i].y);
    if (dist <= 200){
      float a = map(dist,0,200,255,0);
      stroke(0,a);
      strokeWeight(2);
      line(x,y,movers[i].x, movers[i].y);
    }
    i++;
   }
   
   
   
 }
  
  
  
  
  
  
  
  
  
  
  
  
  
}
