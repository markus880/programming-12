class fpoint extends FGameObject{
   
  fpoint(float x, float y){
    
    super();
     setPosition(x, y);

 
   attachImage(flag);
   setSensor(true);
    setName("point");
    setRotatable(false);
    setStatic(true);
  }
  
 void act(){
   if (istouching("player")){
     setStatic(true);
     setSensor(false);
       respy= getY();
        respx= getX();
    respy= getY();
   

    check.play();
    
  
   
   }
  
 }
}
