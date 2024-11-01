class FBridge extends FGameObject{
   
  FBridge(float x, float y){
    
    super();
     setPosition(x, y);
    setFillColor(green);
   
    setName("bridge");
    setRotatable(false);
    setStatic(true);
  }
  
 void act(){
   if (istouching("player")){
     setStatic(false);
     setSensor(false);
   }
  
  
 }
}
