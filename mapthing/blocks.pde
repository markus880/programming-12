class blocks extends FGameObject{
  
     
  blocks(float x, float y){
    
    super();
     setPosition(x, y);

    
    setName("bridge");
    setRotatable(false);
    setStatic(true);
    setSensor(true);
      setFillColor(red);
  }
  
 void act(){
   if (switchy==true){
     setSensor(false);
     setFillColor(black);
   }
      if (switchy==false){
     setSensor(true);
     setFillColor(red);
   }
  
  
 }
  
  
  
  
}
