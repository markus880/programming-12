void gameover(){
if(p1wins==true){
    background(255,0,0);
    text("P1 WINS", width/2, height/2);
}
  if(p2wins==true){
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
  p1score=p2score=0;
  walkp1=walkp2=201;
  p1winning=p2winning=false;
  p1score=0;
  p2score=0;
  rotatep1=0;
  rotatep2=0;
}
