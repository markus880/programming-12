void intro(){
  background(0,255,0);
  image(back,0,0);
  image(bal,900,100,200,200);
  image(bal,100,600,50,50);
   image(bal,1200,600,100,100);
  textAlign(CENTER,CENTER);
  strokeWeight(2);
   if(mouseX>400 && mouseX<1040 && mouseY>500 && mouseY<700){
     strokeWeight(5);
   }
  rect(400,500,640,200);
  textSize(100);
  fill(0);
  text("PLAY",width/2, 600);
  fill(255);
  text("AMONG US SPACE SOCCER", width/2, 300);
  fill(255);
  p1s=0;
  p2s=0;
  start.play();
}
void introclicks(){
  if(mouseX>400 && mouseX<1040 && mouseY>500 && mouseY<700){
  mode=game;
  }
}
