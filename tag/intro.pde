void intro(){
  intros.play();
  image(tag,0,0,1440,840);
  textAlign(CENTER,CENTER);
  fill(0);
  textSize(200);
  text("TAG",width/2,height/2-100);
  fill(0,0,0,0);
  strokeWeight(15);
   if(mouseX>500 && mouseX<940 && mouseY>600 && mouseY<700){
    strokeWeight(10);
  }
  rect(500,600,width-1000,100);
    fill(0);
  textSize(100);
  text("PLAY", width/2,650);
}

void introclicks(){
  if(mouseX>500 && mouseX<940 && mouseY>600 && mouseY<700){
    mode=game;
  }
  
}
