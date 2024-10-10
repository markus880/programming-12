void gameover(){
  if(p2s==5){
    background(220);
    text("PLAYER 2 WINS",width/2, height/2);
  }
  if(p1s==5){
    background(220);
     text("PLAYER 1 WINS",width/2, height/2);
  }
  
  
}

void gameoverclicks(){
  mode=intro;
}
