 class wally extends FGameObject{
 
 wally(float x, float y){
    
    super();
     setPosition(x, y);

    setFillColor(red);
    
    
   
    setName("walls");
    setRotatable(false);
    setStatic(true);
     setSensor(true);
  }
  void act(){
       setSensor(true);
  }
 
 
 }
