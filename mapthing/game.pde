void game(){
   background(255);
  actWorld();
  player.act();
  drawworld();

  playerd--;
  if (lives<1){
    mode=over;
  }
}
