void game(){
  
  if(ll==0){
games.rewind();
   games.play();
  loadworld(map);
  loadplayer();
    player.setPosition(respx, respy-60);
   ll++;
  }
  //if(ll==200){
  //    loadworld(map);
  //    loadplayer();
  //      player.setPosition(respx, respy-60);
  //    ll=1;
  //}
   background(255);
  actWorld();
  player.act();
  image(background,-100,-100);
  drawworld();



  println(respx,respy);
tp++;


e--;

  playerd--;
  if (lives<1){
  player.setPosition(respx, respy-20);
  lives =3;
  ll=0;
  

  
   }
  
  }
