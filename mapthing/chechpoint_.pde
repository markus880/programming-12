class fpoint extends FGameObject{
   
  fpoint(float x, float y){
    
    super();
     setPosition(x, y);

 
   
    setName("point");
    setRotatable(false);
    setStatic(true);
  }
  
 void act(){
   if (istouching("player")){
     setStatic(true);
     setSensor(false);
    respx= getX();
    respy= getY();
   }
  
 }
}
