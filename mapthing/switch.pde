class fswitch extends FGameObject{
   
  fswitch(float x, float y){
    
    super();
     setPosition(x, y);

  if (switchy==false)setFillColor(blue);
    if (switchy==true)setFillColor(red);
   
    setName("switch");
    setRotatable(false);
    setStatic(true);
     setSensor(true);
  }
  
 void act(){
   if (istouching("player")){
     setStatic(true);
     setSensor(true);
     if(player.getVelocityX()>0){
       switchy=true;
     }
     if( player.getVelocityX()<0){
       switchy=false;
     }
   }
  if (switchy==false)setFillColor(blue);
    if (switchy==true)setFillColor(red);
  
 }
}
