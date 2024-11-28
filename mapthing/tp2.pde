class ftp2 extends FGameObject{
   
  ftp2(float x, float y){
    
    super();
     setPosition(x, y);

   
    setName("tp");
    setRotatable(false);
    setStatic(true);
  }
  
 void act(){
   if (istouching("player")&&tp>180){
    player.setPosition(tp1x,tp1y);
    tp=0;
   }
  tp2x=getX();
 tp2y=getY()-gridSize;
 }
}
