class ftramp extends FGameObject{
   
  ftramp(float x, float y){
    
    super();
     setPosition(x, y);

 attachImage(trampo);
   
    setName("tramp");
    setRotatable(false);
    setStatic(true);
    setSensor(true);
    
  }
  
 void act(){
   if (istouching("player")){
player.setVelocity(0,-600);
e=55;
     
   }
 
 }
}
