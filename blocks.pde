class blocks extends FGameObject{
  
     
  blocks(float x, float y){
    
    super();
     setPosition(x, y);

    
    setName("onoff");
    setRotatable(false);
    setStatic(true);
    setSensor(true);

      attachImage(nograss);
  }
  
 void act(){
   if (switchy==true){
     setSensor(false);
     attachImage(grass);
   }
      if (switchy==false){
     setSensor(true);
   attachImage(nograss);
   }
  
  
 }
  
  
  
  
}
