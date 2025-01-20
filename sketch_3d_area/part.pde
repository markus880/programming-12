class particle extends GameObject{
  PVector dir ;
  float speed,k;
  
  particle(PVector loc){
  super(loc.x,loc.y,loc.z,10);
  k= random (-4,4);
  }
    void show(){
    for(int i=0;i<200;i++){
 boxy(loc.x, loc.y, loc.z, dia, 10);
 boxy(loc.x, loc.y, loc.z, dia, 10);
 boxy(loc.x, loc.y, loc.z, dia, 10);
 boxy(loc.x, loc.y, loc.z, dia, 10);
 boxy(loc.x, loc.y, loc.z, dia, 10);
    }
  }
  void act(){
     if(loc.y<height-2){
   loc.x=loc.x+k;
   loc.z=loc.z+k;
  
   loc.y=loc.y+2;
   }
      }
    }
  
