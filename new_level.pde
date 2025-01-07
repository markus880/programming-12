class newl extends FGameObject{
   
  newl(float x, float y){
    
    super();
     setPosition(x, y);
 if(mode==0){
attachImage(bridget);
     }
       if(mode==2){
attachImage(jewel);
     }
     if (mode==4){
      attachImage(goblin); 
     }
 
   
    setName("point");
    setRotatable(false);
    setStatic(true);
  }
  
 void act(){
   if (istouching("player")){
         world.remove(this);
         respx=respy=0;
         switchy=false;
             check.rewind();
mode++;
  ll=0;
   }
  
 }
}
