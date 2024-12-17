void intro(){
  if(mouseX>400 && mouseX<1040 && mouseY>500 && mouseY<700){
     strokeWeight(5);
   }else{strokeWeight(2);}
  rect(400,500,640,200);
  textSize(100);
  fill(0);
  textAlign(CENTER,CENTER);
  text("PLAY",width/2, 600);
  fill(255);
  
}
void introclicks(){
  if(mouseX>400 && mouseX<1040 && mouseY>500 && mouseY<700){
  mode = game;
  lives=3;
   loadworld(map);
  loadplayer();
  }
}
