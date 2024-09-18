void game() {
  t++;
   if(t==14){
    armp1=armp1*-1;
    t=0;
  }
  background(255);
games.play();
intros.pause();
  fill(255);
  image(grass,0,0);
  strokeWeight(1);
  fill(255, 0, 0);
 p1(p1x, p1y);
  fill(0, 0, 255);

  p2(p2x, p2y);

  textSize(100);
  fill(0);
  text(p1score/60, 400, 100);
  text(p2score/60, 1040, 100);
  
fill(157,120,44);
obs(width/2, 220,300);
obs(250,600,280);
  obs(width-250,600,280);
  obs(500,450,80);
  obs(width-500,450,80);
     image(bar,460,410);
      image(bar,width-540,410);
      image(hut,80,430);
         image(hut,width-410,430);
         image(well,width/2-165,220-165);
            

  if (noit==true) {
    if (dist(p1x, p1y, width/2, height/2)<40) {
      noit=false;
      p1winning=true;
      chaching.play();
    }
    if (dist(p2x, p2y, width/2, height/2)<40) {
      noit=false;
      p2winning=true;
        chaching.play();
    }

    if (noit==true) {
      circle(width/2, height/2, 20);
    }
  }


  if (p1winning==true) {
    p1score++;
  }
  if (p2winning==true) {
    p2score=p2score+1;
  }

  if (dist(p1x, p1y, p2x, p2y)<60 && p1winning==true && walkp2>100) {
    p1winning=false;
    p2winning=true;
    walkp1=0;
    p1x= p1x+20*(p1x/20-p2x/20);
     p1y= p1y+20*(p1y/20-p2y/20);
     boing.rewind();
     boing.play();
  }

  if (dist(p1x, p1y, p2x, p2y)<60 && p2winning==true && walkp1>100) {
    p2winning=false;
    p1winning=true;
    walkp2=0;
       p2x= p2x+20*(p2x/20-p1x/20);
     p2y= p2y+20*(p2y/20-p1y/20);
     boing.rewind();
     boing.play();
     
  }

  //println(w1,w2);
 //ballvx =  3*(ballx/20 - leftx/20);
    //ballvy = 3*(bally/20- lefty/20) ;
  walkp1++;
  walkp2++;


  if (p1winning==true) {
    if ( wkey == true)p1y = p1y - 3;
    if ( skey == true) p1y = p1y + 3;
    if ( akey == true) p1x = p1x - 3;
    if ( dkey == true) p1x = p1x + 3;
  }

  if (p1winning==false && walkp1>100) {
    if ( wkey == true) p1y = p1y - 4;
    if ( skey == true) p1y = p1y + 4;
    if ( akey == true) p1x = p1x - 4;
    if ( dkey == true) p1x = p1x + 4;
  }
  if (p2winning==true) {
    if ( upkey == true) p2y = p2y - 3;
    if ( downkey == true) p2y = p2y + 3;
    if ( lkey == true) p2x = p2x - 3;
    if ( rkey == true) p2x = p2x + 3;
  }
  if (p2winning==false && walkp2> 100) {
    if ( upkey == true) p2y = p2y - 4;
    if ( downkey == true) p2y = p2y + 4;
    if ( lkey == true) p2x = p2x - 4;
    if ( rkey == true) p2x = p2x + 4;
  }
  
  
  
  
if(p1x<30){
  akey=false;
  p1x=30;
}
if(p1x>1410){
  dkey=false;
  p1x=1410;
}

if(p2x<30){
  lkey=false;
  p2x=30;
}
if(p2x>1410){
  rkey=false;
  p2x=1410;
}

if(p1y<30){
  wkey=false;
  p1y=30;
}
if(p1y>810){
  skey=false;
  p1y=810;
}

if(p2y<30){
  upkey=false;
  p2y=30;
}
if(p2y>810){
  downkey=false;
  p2y=810;
}



if(wkey==true && dkey==true){
  rotatep1= 0.785+1.57;
  movep1=true;
  
}else if(skey==true && dkey==true){
  rotatep1= 0.785;
    movep1=true;
  
}else if(wkey==true && akey==true){
  rotatep1= 0.785;
    movep1=true;
  
}else if(wkey== true){
  rotatep1=1.57;
    movep1=true;
  
}else if(skey==true && akey==true){
  rotatep1= 0.785+1.57;
    movep1=true;
  
}
else if(skey== true){
  rotatep1=1.57;
    movep1=true;
  
}
else if(akey== true){
  rotatep1=0;
    movep1=true;
  
}
else if(dkey== true){
  rotatep1=0;
  movep1=true;
  
}else if(wkey==false && skey==false && akey==false && dkey==false){
movep1=false;
armp1=0;
}




if(upkey==true && rkey==true){
  rotatep2= 0.785+1.57;
    movep2=true;
  
}else if(downkey==true && rkey==true){
  rotatep2= 0.785;
   movep2=true;
}else if(upkey==true && lkey==true){
  rotatep2= 0.785;
   movep2=true;
}else if(upkey== true){
  rotatep2=1.57;
   movep2=true;
}else if(downkey==true && lkey==true){
  rotatep2= 0.785+1.57;
   movep2=true;
}
else if(downkey== true){
  rotatep2=1.57;
   movep2=true;
}
else if(lkey== true){
  rotatep2=0;
   movep2=true;
}
else if(rkey== true){
  rotatep2=0;
  movep2=true; 
}else{
  movep2=false;
  armp2=0;
}




if(p1score/60==27){
  count.play();
}


if(p2score/60==27){
  count.play();
}










  if (p1score/60==30) {
    p1wins=true;
    mode=gameover;
  }

  if (p2score/60==30) {
    p2wins=true;
    mode=gameover;
  }
}

void gameclicks() {
}
