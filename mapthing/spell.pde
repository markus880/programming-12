class Fspell extends FGameObject{
 float jx,jy,jvx,jvy;
 
 
 Fspell(float x, float y){
    super();
    setPosition(x,y);

    setName("jeff");
    setRotatable(false);
   
  }
 
 void act(){
  jx=getX();
  jy= getY();
  
   jvy= 100*(jy-player.getY())/(jx-player.getX());
   if(jy<player.getX()){
    jx=100;       //(jx-player.getX())/(jy-player.getY());
    
   }
   
   
    if(jy>player.getX()){
    jx=-100;       //(jx-player.getX())/(jy-player.getY());
    
   }
setVelocity(jx,jy);
    //circle(jx,jy,10);
    jx=jx+jvx;
    jy=jy-jvy;
  
 }
 void animate(){
   setFill(red);
    //circle(jx,jy,10);
    
 }
    
}
