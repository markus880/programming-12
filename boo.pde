class Fboo extends FGameObject{


 float jx,jy,jvx,jvy;
 Fboo(float x, float y){
    super();
    setPosition(x,y);

    setName("jeff");
    setRotatable(false);
    attachImage(ghost);
   
  }
 
 void act(){
//if(player.getX()>getX()+100){
//  setVelocity(100,getVelocityY());
//  setStatic(false);
//}if(player.getX()<getX()+100){
//  setVelocity(0,getVelocityY());
// setStatic(false);
//}
// if( player.getY()>getY()-50 && player.getY()<getY()+50 && getVelocityX()<1){
//    setVelocity(getVelocityX(),0);
//    setStatic(true);
//}
//else if(player.getY()<getY()+50){
//  setVelocity(getVelocityX(),-100);
//  setStatic(false);
//}
//else if(player.getY()>getY()-50){
//  setVelocity(getVelocityX(),100);
//   setStatic(false);
//}

 jy= getY();
  jx= getX();
  setStatic(true);
  
 if(player.dir==r && player.getX()>jx){ 
    setStatic(false);

   jvy= 80*(-player.getY()+20+jy)/(jx-player.getX());
   if(jvy>100)jvy=100;
   if(jx<player.getX()){
    jvx=60;   
   //(jx-player.getX())/(jy-player.getY());
    
   }
   
   
 
   setVelocity(jvx,jvy);
   }
 if(player.dir==l)setStatic(true);
 
 if (istouching("player")){
    
    world.remove(this);
    enemies.remove(this);
    
    lives--;
}
 }
 

   }

  
 
