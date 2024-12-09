class Fjeff extends FGameObject {
  int direction= l;
  int speed= 50;
  int frame= 0;
  float jx,jy,jvx,jvy;
  
  Fjeff(float x, float y){
    super();
    setPosition(x,y);
    setName("jeff");
    setRotatable(false);
  }
  void act(){
    animate();
    collide();
    move();
    shoot();
  }
  void animate(){
    if (frame>=wiz.length) frame=0;
    if (frameCount %5==0){
      if (direction==r)attachImage(wiz[frame]);
            if (direction==l)attachImage(reverseImage(wiz[frame]));
            frame++;
    }
  }
void collide(){
  
    if(istouching("walls")&&direction>0){
       setVelocity(-50,0);
  
     direction*=-1;
  
  }
   if(istouching("walls")&&direction<0){
       setVelocity(50,0);
  
     direction*=-1;
  
  }
  if(istouching("wall")){
    direction*=-1;
    setPosition(getX()+direction,getY());
  }
  if (istouching("player")){
    if (player.getY()<getY()-gridSize/1.5){
    world.remove(this);
    enemies.remove(this);
    e=45;
    player.setVelocity(player.getVelocityX(), -300);
    }else{

    
  }
  }
}
void move(){
  float vy= getVelocityY();
  setVelocity(speed*direction, vy);
}


void shoot(){
    jx=getX();
  jy= getY();

  if(dist(player.getX(),player.getY(),getX(),getY())<400  ){
    
    
    if(time<0){
    
    Fspell sp= new Fspell(getX(), getY()-40);
        enemies.add(sp);
        world.add(sp);
        time=180;
      
    }
    
 
    
    
  }
  
  
  
  
  
  
  
}


}
