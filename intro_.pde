void intro(){
  if(mouseX>400 && mouseX<1040 && mouseY>500 && mouseY<700){
     strokeWeight(5);
   }else{strokeWeight(2);}
 
  image(background, -100, -100);
   rect(400,500,640,200);
  textSize(100);
  fill(0);
  textAlign(CENTER,CENTER);
  text("PLAY",width/2, 600);
  textSize(79);
  text("MR.SKELLYBONES ADVENTURES",width/2, 400);
  fill(255);
  image(skell,100,500,250,250);
  image(ghost,100,240,100,100);
  image((wiz[1]),1200,100,200,200);
  image((goomba[1]),1200,600,100,100);
  image(goblin,width/2,100,150,150);
  image (bridget,400,100,200,200);
}
void introclicks(){
  if(mouseX>400 && mouseX<1040 && mouseY>500 && mouseY<700){
  mode = game;
      leve.play();
           leve.rewind();
  lives=3;
   loadworld(map);
  loadplayer();
  }
}
