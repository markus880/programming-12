void gameover(){
if(p1ws==true){
    background(255,0,0);
    text("P1 WINS", width/2, height/2);
}
  if(p2ws==true){
    background(0,0,255);
    text("P2 WINS", width/2, height/2);
}
  
}

void gameoverclicks(){
  mode=intro;
   p1x=50;
  p1y= p2y=420;
  p2x= 1390;
  noit=true;
  p1s=p2s=0;
  w1=w2=201;
  p1w=p2w=false;
  p1s=0;
  p2s=0;
}
