class FPlayer extends FGameObject {


  
  
  FPlayer(float x, float y) {
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
 
if(istouching("stone")){
 
}
    
    if (istouching("spike")) {
        player.setVelocity(player.getVelocityX(), -500);
      if(playerd<1){
        
     lives--;
     playerd=120;
      }
    }
  }
  void hinput() {
    
    float p1vx = player.getVelocityX();
    float p1vy = player.getVelocityY();
if(p1vy==0)action=idle;
    if (dkey==true&&akey==false) {
      player.setVelocity(250, p1vy);
      action=run;
      dir=r;
    }

    else if (akey==true&&skey==false) {
      player.setVelocity(-250, p1vy);
      dir=l;
        action=run;
    }
    if (wkey==true && p1vy<20 && p1vy>-20 && e<0&& grac>0) {
      setVelocity(p1vx, -400);
         e=25;
      if (abs(p1vy)>0.1) action=jump;
           jumps.rewind();
       jumps.play();
    }
     if (skey==true && p1vy<20 && p1vy>-20 && e<0&& grac<0 ) {
      setVelocity(p1vx, 400);
         e=25;
      if (abs(p1vy)>0.1) action=jump;
           jumps.rewind();
       jumps.play();
    }
    if (spkey==true && p1vy<20 && p1vy>-20 && e<0&& grac<0  ) {
     setVelocity(p1vx, 400);
          jumps.rewind();
       jumps.play();
       if (abs(p1vy)>0.1) action=jump;
       e=25;
    }
    if (spkey==true && p1vy<20 && p1vy>-20 && e< 0&& grac>0 ) {
     setVelocity(p1vx, -400);
          jumps.rewind();
       jumps.play();
       if (abs(p1vy)>0.1) action=jump;
       e=25;
    }
    if(dkey==true && akey==false&&player.getVelocityX()<50){
     player.setVelocity(player.getVelocityX(),-21); 
    }if(akey==true &&player.getVelocityX()>-50){
     setVelocity(player.getVelocityX(),-21); 
    }
  //  if(akey==true&&dkey==true){
  //      player.setVelocity(0,getVelocityY()); 
  //}
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
