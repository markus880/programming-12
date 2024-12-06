class Fshellg extends FGameObject {
  int direction= l;
  int speed= 50;
  int frame= 0;
  Fshellg(float x, float y){
    super();
    setPosition(x,y);
    setName("goomba");
    setRotatable(false);
  }
  void act(){
    animate();
    collide();
    move();
  }
  void animate(){
    if (frame>=goomba.length) frame=0;
    if (frameCount %5==0){
      if (direction==r)attachImage(goomba[frame]);
            if (direction==l)attachImage(reverseImage(goomba[frame]));
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
    
     fshell s= new fshell(getX(), getY()-10);

        enemies.add(s);
        world.add(s);
    player.setVelocity(player.getVelocityX(), -300);
 
    }else{

     lives--;
  }
  }
}
void move(){
  float vy= getVelocityY();
  setVelocity(speed*direction, vy);
}
}
