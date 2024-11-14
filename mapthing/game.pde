void game(){
   background(255);
  actWorld();
  player.act();
  drawworld();

e--;

  playerd--;
  if (lives<1){
    mode=over;
  }
}
