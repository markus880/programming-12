class fshell extends FGameObject{
   
  fshell(float x, float y){
    
    super();
     setPosition(x, y);

 setFillColor(dblue);
   
    setName("shell");
    setRotatable(false);
    setStatic(false);
    setRestitution(1.6);
  }
  
 void act(){
  
        setVelocity(getVelocityX(),0);
   }
 
 }
