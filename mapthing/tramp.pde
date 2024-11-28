class ftramp extends FGameObject{
   
  ftramp(float x, float y){
    
    super();
     setPosition(x, y);

 setFillColor(dblue);
   
    setName("tramp");
    setRotatable(false);
    setStatic(true);
  }
  
 void act(){
   if (istouching("player")){
player.setVelocity(0,-600);
     
   }
 
 }
}
