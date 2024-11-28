class Fspell extends FGameObject{
 float jx,jy,jvx,jvy;
 
 
 Fspell(float x, float y){
    super();
    setPosition(x,y);

    setName("jeff");
    setRotatable(false);
   
  }
 
 void act(){

  jy= getY();
  jx= getX();
  
   jvy= -100*(jy-player.getY())/(jx-player.getX());
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
    player.setVelocity(5*jvx,5*jvy);
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
   setFill(red);
    //circle(jx,jy,10);
    
 }
    
}
