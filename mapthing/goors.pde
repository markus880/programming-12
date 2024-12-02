class Fjeff extends FGameObject {
  int direction= l;
  int speed= 50;
  int frame= 0;
  float jx,jy,jvx,jvy;
  float time= 180;
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
    if (frame>=goomba.length) frame=0;
    if (frameCount %5==0){
      if (direction==r)attachImage(goomba[frame]);
            if (direction==l)attachImage(reverseImage(goomba[frame]));
            frame++;
    }
  }
void collide(){
  if(istouching("wall")){
    direction*=-1;
    setPosition(getX()+direction,getY());
  }
  if (istouching("player")){
    if (player.getY()<getY()-gridSize/1.5){
    world.remove(this);
    enemies.remove(this);
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
    
    //&& player.getX()>getX()+50 ||player.getX()<getX()
    // jvy= (jy-player.getY())/(jx-player.getX());
    //jvx=(jx-player.getX())/(jy-player.getY());
    //println("hi");
    //circle(jx,jy,10);
    //jx=jx+jvx;
    //jy=jy+jvy;
    if(time<0){
    
    Fspell sp= new Fspell(getX(), getY()-40);
        enemies.add(sp);
        world.add(sp);
        time=240;
      
    }
    
    time--;
    
    
  }
  
  
  
  
  
  
  
}


}
