class fwomp extends FGameObject{
   
  fwomp(float x, float y){
    
    super();
     setPosition(x, y);

 setFillColor(blue);
   
    setName("womp");
    setRotatable(false);
    setStatic(true);
   
  }
  
 void act(){
  
       if(player.getX()<getX()+gridSize &&player.getX()>getX()-gridSize && player.getY()>getY()){
         setStatic(false);
         setFillColor(red);
         
       }
        if (istouching("player")){
    
    world.remove(this);
    enemies.remove(this);
 
    lives--;
    
        }
   }
 
 }
