class FBridge extends FGameObject{
   
  FBridge(float x, float y){
    
    super();
     setPosition(x, y);

     attachImage(rail);
    
        attachImage(bridge);
   
    setName("bridge");
    setRotatable(false);
    setStatic(true);
  }
  
 void act(){
   if (istouching("player")){
     setStatic(false);
     setSensor(true);
   }
  
  
 }
}
