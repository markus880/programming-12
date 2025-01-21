class particle extends GameObject{
  PVector dir ;
  float speed,k;
  
  particle(PVector loc){
  super(loc.x,loc.y,loc.z,10);
 lives=100;
  }
    void show(){
 
 boxy(loc.x, loc.y, loc.z, dia, 10);
 boxy(loc.x, loc.y, loc.z, dia, 10);
 boxy(loc.x, loc.y, loc.z, dia, 10);
 boxy(loc.x, loc.y, loc.z, dia, 10);
 boxy(loc.x, loc.y, loc.z, dia, 10);
    
  }
  void act(){
    lives--;
     if(loc.y<height-2){
        k= random (-4,4);
   loc.x=loc.x+k;
   loc.z=loc.z+k;
  
   loc.y=loc.y+2;
   }
      }
    }
  
