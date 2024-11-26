void game(){
   background(255);
  actWorld();
  player.act();
  drawworld();


e--;

  playerd--;
  if (lives<1){
  player.setPosition(respx, respy-20);
  lives =3;
  
loadworld(map);
  loadplayer();
    player.setPosition(respx, respy-60);
   }
  }
