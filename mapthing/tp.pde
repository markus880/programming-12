class ftp extends FGameObject{
   
  ftp(float x, float y){
    
    super();
     setPosition(x, y);

   
    setName("tp");
    setRotatable(false);
    setStatic(true);
  }
  
 void act(){
   if (istouching("player")&&tp>180){
    player.setPosition(tp2x,tp2y);
    tp=0;
   }
  tp1x=getX();
 tp1y=getY()-gridSize;
 }
}
