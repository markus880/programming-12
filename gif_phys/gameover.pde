void gameover(){
  if(p2s==3){
     image(backg,0,0);
    text("PLAYER 2 WINS",width/2, height/2);
  }
  if(p1s==3){
 image(backg,0,0);
     text("PLAYER 1 WINS",width/2, height/2);
  }
   bans.show();
  
}

void gameoverclicks(){
  mode=intro;
  games.pause();
  games.rewind();
  start.rewind();
}
