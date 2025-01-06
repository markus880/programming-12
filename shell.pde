class fshell extends FGameObject{
   
  fshell(float x, float y){
    
    super();
     setPosition(x, y);

 setFillColor(dblue);
   
    setName("shell");
    setRotatable(false);
    setStatic(false);
    setRestitution(1.1);
    setFriction(0);
    attachImage(shell);
    
    if(player.dir==l){
        setVelocity(-500,0);
   }
   if(player.dir==r){
        setVelocity(500,0);
   }
  }
  
 void act(){
  
    setVelocity(getVelocityX(),0);
  if(istouching("goomba")){
    setVelocity(getVelocityX(),0);
       }
       
        if(istouching("player")){
         
lives--;
          
       }
    
       if(getVelocityX()< 50 && getVelocityX()>-50 ){
    world.remove(this);
    enemies.remove(this);
  
}
   }
 
 }
