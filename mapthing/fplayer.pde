class FPlayer extends FBox{
  
FPlayer(){
  super (gridSize, gridSize);
  setPosition(300, 0);
  setFillColor(green);
  fill(250,0,0);
}

void act(){
  
   float p1vx = player.getVelocityX();
  float p1vy = player.getVelocityY();
  
    if (dkey==true) {
      player.setVelocity(250, p1vy);
    }

    if (akey==true) {
      player.setVelocity(-250, p1vy);
    }
    if (wkey==true) {
      player.setVelocity(p1vx, -250);
    }
    if (skey==true) {
      player.setVelocity(p1vx, 250);
    }
  
  
  
}
  
}
