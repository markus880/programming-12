void intro(){
  background(0,255,0);
  image(back,0,0);
  image(bal,900,100,200,200);
  image(bal,100,600,50,50);
   image(bal,1200,600,100,100);
  textAlign(CENTER,CENTER);
  strokeWeight(2);
  
   mybutton[0]= new button("PLAY",width/2,600,500,100,white,black,false) ;
  textSize(100);
  fill(0);
  text("PLAY",width/2, 600);
  fill(255);
  text("AMONG US SPACE SOCCER", width/2, 300);
  fill(255);
  p1s=0;
  p2s=0;
  int i= 0;
   while (i<n) {

  mybutton[i].show();
    mybutton[i].act();
     i++;
  }
  click();
  
  
  start.play();
}
void introclicks(){
  
}
