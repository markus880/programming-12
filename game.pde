void game(){
  if(ll==0){

  loadworld(map);
  loadplayer();
    
   ll++;
 }
   background(255);
  actWorld();
  player.act();
  image(background,-100,-100);
  drawworld();



  
tp++;


e--;

  playerd--;
  if (lives<1){
  player.setPosition(respx, respy-20);
  lives =3;
  ll=0;
  

    player.setPosition(respx, respy-60);
   }
  }
