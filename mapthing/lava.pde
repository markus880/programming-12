class Flava extends FGameObject{
int frames= int(random (0,34));
int h=1;
  Flava(float x, float y){
    
    super();
     setPosition(x, y);

    setFillColor(red);
   
    setName("lava");
    setRotatable(false);
    setStatic(true);
  }
  
 void act(){

   col();
   anim();
   }
  
  void col(){
       if (istouching("player")){
  
        player.setVelocity(player.getVelocityX(), -500);
      if(playerd<1){
        
     lives--;
     playerd=120;
      }
    
  }
   
     setSensor(true);
  }
  
  
  
  void anim(){
    
      if (frames>=lava.length-1) h=h*-1;
      if( frames<1)h=h*-1;
    if (frameCount %0.5==0) {
      attachImage(lava[frames]);
           frames=frames+h;
    }
    println(frames);
    
    
    
    
  }
 }
