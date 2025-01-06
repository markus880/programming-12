class fswitch extends FGameObject{
   
  fswitch(float x, float y){
    
    super();
     setPosition(x, y);

   attachImage(reverseImage(lever));
   
    setName("switch");
    setRotatable(false);
    setStatic(true);
     setSensor(true);
  }
  
 void act(){
   if (istouching("player")){
     setStatic(true);
     setSensor(true);
     if(player.getVelocityX()>0){
       switchy=true;
       attachImage(lever);
     }
     else if( player.getVelocityX()<0){
       switchy=false;
       attachImage(reverseImage(lever));
     }
   }
  
 }
}
