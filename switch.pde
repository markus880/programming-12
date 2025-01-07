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
     if(player.getVelocityX()>10){
       switchy=true;
       attachImage(lever);
       leve.play();
           leve.rewind();
       
     }
     else if( player.getVelocityX()<-10){
         leve.play();
       leve.rewind();
     
       switchy=false;
       attachImage(reverseImage(lever));
     }
   }
  
 }
}
