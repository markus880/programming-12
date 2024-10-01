
gifed bans,bans1;


void setup(){
size(1440,840);  
 
    bans= new gifed("frame_", "_delay-0.1s.gif", 8, 6, width/2, height/2-100);
    bans1= new gifed("frame_", "_delay-0.1s.gif", 8, 12, width/4, height/4);
  
  
  
  
}


void draw(){
  background(255,255,255);
 
  bans.show();
   bans1.show();
}
