class fwomp extends FGameObject{
   
  fwomp(float x, float y){
   
    super();
     setPosition(x, y);

 setFillColor(blue);
   
    setName("womp");
    setRotatable(false);
    setStatic(true);
     attachImage(sleep);
          womp.rewind();
  }
  
 void act(){
  
       if(player.getX()<getX()+gridSize &&player.getX()>getX()-gridSize && player.getY()>getY()){
         attachImage(attack);
         setStatic(false);
         setFillColor(red);
         womp.play();
     
         
       }
        if (istouching("player")){
    
    world.remove(this);
    enemies.remove(this);
 
    lives--;
    
        }
   }
 
 }
