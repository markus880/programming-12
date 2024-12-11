void secondlev() {
  if (ll==0) {

    loadworld(sl);
    loadplayer();
    println("1");
    ll++;
  }
  background(255);
  actWorld();
  player.act();
  image(background, -100, -100);
  drawworld();

  time--;
  println("2");

  tp++;


  e--;

  playerd--;
  if (lives<1) {
    player.setPosition(respx, respy-20);

    lives =3;

    ll=0;

    player.setPosition(respx, respy-60);
  }
}
