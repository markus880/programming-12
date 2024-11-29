class Fboo extends FGameObject{


 
 Fboo(float x, float y){
    super();
    setPosition(x,y);

    setName("jeff");
    setRotatable(false);
    setFillColor(red);
   
  }
 
 void act(){
if(player.getX()>getX()+100){
  setVelocity(100,getVelocityY());
  println("hi");
}if(player.getX()<getX()+100){
  setVelocity(0,getVelocityY());
  println("hi");
}

if( player.getY()<getY()+100 && player.getY()>getY()+50 && getVelocityX()==0){
    setVelocity(getVelocityX(),0);
}
else if(player.getY()<getY()+100){
  setVelocity(getVelocityX(),-100);
 
}
else if(player.getY()>getY()+50){
  setVelocity(getVelocityX(),100);
 
}

   }
   

    
   }

  
 
