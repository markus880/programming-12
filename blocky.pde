class bar extends FGameObject{
   
  bar(float x, float y){
    
    super();
     setPosition(x, y);

 
   
    setName("bar");
    setRotatable(false);
    setStatic(true);
     setSensor(true);
     attachImage(grass);
   setImageAlpha(0);
    
  }
  
 void act(){
 }
}
