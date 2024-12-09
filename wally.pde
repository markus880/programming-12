 class wally extends FGameObject{
 
 wally(float x, float y){
    
    super();
     setPosition(x, y);
attachImage(grass);
   setImageAlpha(0);
    
    
   
    setName("walls");
    setRotatable(false);
    setStatic(true);
     setSensor(true);
  }
  void act(){
       setSensor(true);
  }
 
 
 }
