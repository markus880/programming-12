void secondlev() {
  if (ll==0) {
games.rewind();
   games.play();
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
  

 
// int i=0;
// if (i<180){
//    textAlign(CENTER,CENTER);
//    textSize(29);

//    text("FIND THE WIZARDS JEWLS",width/2,100);
// }else{
//    fill(0);
// textAlign(CENTER,CENTER);
//    textSize(29);
//    text("FIND THE WIZARDS JEWLS",width/2,100);
//}
//i++;
  tp++;


  e--;

  playerd--;
  if (lives<1) {
   

    lives =3;

    ll=0;

    player.setPosition(respx, respy-60);
  }
}
