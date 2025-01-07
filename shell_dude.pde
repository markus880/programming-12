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
    mondead.rewind();
    mondead.play();
    e=45;
    
     fshell s= new fshell(getX(), getY()-10);
player.setPosition(player.getX(),player.getY()-25);
     
    player.setVelocity(player.getVelocityX(), -300);
    enemies.add(s);
        world.add(s);
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
