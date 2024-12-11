class newl extends FGameObject{
   
  newl(float x, float y){
    
    super();
     setPosition(x, y);

 
   
    setName("point");
    setRotatable(false);
    setStatic(true);
  }
  
 void act(){
   if (istouching("player")){
         world.remove(this);
mode++;
  ll=0;
   }
  
 }
}
