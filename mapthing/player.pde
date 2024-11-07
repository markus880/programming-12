class FPlayer extends FGameObject {


  
  
  FPlayer() {
    super ();
    dir=r;
    setPosition(300, 0);
    setFillColor(green);
    fill(250, 0, 0);
    setName("player");
    setRotatable(false);
    
  }

  void act() {

    hinput();
    animate();
    
    if (istouching("spike")) {
      setPosition(0, 0);
    }
  }
  void hinput() {
    float p1vx = player.getVelocityX();
    float p1vy = player.getVelocityY();
if(p1vy==0)action=idle;
    if (dkey==true) {
      player.setVelocity(250, p1vy);
      action=run;
      dir=r;
    }

    if (akey==true) {
      player.setVelocity(-250, p1vy);
      dir=l;
        action=run;
    }
    if (wkey==true) {
      player.setVelocity(p1vx, -250);
      if (abs(p1vy)>0.1) action=jump;
    }
    if (skey==true) {
      player.setVelocity(p1vx, 250);
    }
  }
  
  
  void animate(){

    if (frame>= action.length) frame=0;
    if (frameCount %5==0){
      if (dir==r)attachImage(action[frame]);
    if (dir==l)  attachImage(reverseImage(action[frame]));
      frame++;
    }
    
  }
  
  
  
}
