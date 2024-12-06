class Fspell extends FGameObject{
 float jx,jy,jvx,jvy;
 int framees= int(random (0,34));
 
 Fspell(float x, float y){
    super();
    setPosition(x,y);

    setName("jeff");
    setRotatable(false);
   
  }
 
 void act(){
   animate();

  jy= getY();
  jx= getX();
  
  
   jvy= 200*(jy-player.getY())/(jx-player.getX());
   if(jx<player.getX()){
    jvx=200;       //(jx-player.getX())/(jy-player.getY());
    
   }
   
   
    if(jx>player.getX()){
    jvx=-200;       //(jx-player.getX())/(jy-player.getY());
    
   }
setVelocity(jvx,jvy);
    //circle(jx,jy,10);
    jx=jx+jvx;
    jy=jy-jvy;
    
    
    
      if (istouching("player")){
    
    world.remove(this);
    enemies.remove(this);
    if(jvx>0){
      player.setVelocity(350,150);
    }
    if(jvx<0){
      player.setVelocity(-350,150);
    }
    lives--;
    
    }else if (istouching("ice")){
      
    world.remove(this);
    enemies.remove(this);
    }
    
    else if (istouching("brick")){
      
    world.remove(this);
    enemies.remove(this);
    }
    else if (istouching("bridge")){
      
    world.remove(this);
    enemies.remove(this);
    }
    else if (istouching("wall")){
      
    world.remove(this);
    enemies.remove(this);
    }
   else if (istouching("jeff")){
      
    world.remove(this);
    enemies.remove(this);
    }
  
  
  
  
 }
 void animate(){


      if (framees>=lava.length-1) framees=0;
    //  if( frames<1)h=h*-1;
    if (frameCount %0.5==0) {
      attachImage(spe[framees]);
           framees=framees+1;
         
    }

    
    
    
    
  
    
 }
    
}
