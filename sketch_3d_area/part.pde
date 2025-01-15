class particle extends GameObject{
  PVector dir ;
  float speed;
  particle(PVector loc){
    pushMatrix();
    translate(loc.x,loc.y,loc.z);
    
    
    popMatrix();
  }
    void show(){
    
  }
  void act(){
   
      }
    }
  
