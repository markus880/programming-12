void secondlev() {
  if (ll==0) {

    loadworld(sl);
    loadplayer();
  player.setPosition(respx, respy-60);
    ll++;
  }
  background(255);
  actWorld();
  player.act();
  image(background, -100, -100);
  drawworld();
  

  println(player.getX(),player.getY(),grac);

  tp++;


  e--;

  playerd--;
  if (lives<1) {
   

    lives =3;

    ll=0;

    player.setPosition(respx, respy-60);
  }
}