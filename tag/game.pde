void game(){
  background(255);
  fill(255);
  strokeWeight(1);
  fill(255,0,0);
  circle(p1x,p1y,60);
  fill(0,0,255);
    circle(p2x,p2y,60);
    textSize(200);
    fill(0);
text(p1s,400,100);
text(p2s,1040,100);
   
    if(noit==true){
    if(dist(p1x,p1y, width/2, height/2)<40){
      noit=false;
    p1w=true;
    }
      if(dist(p2x,p2y, width/2, height/2)<40){
      noit=false;
    p2w=true;
    }
    
    if(noit==true){
    circle(width/2, height/2,20);
    }
    }
    
    
    if(p1w==true){
      p1s++;
    }
      if(p2w==true){
      p2s++;
    }
    
    if(dist(p1x,p1y,p2x,p2y)<60 && p1w==true){
      p1w=false;
          w1=0;
      p2w=true;
        
    }
    
       if(dist(p1x,p1y,p2x,p2y)<60 && p2w==true){
      p2w=false;
        w2=0;
      p1w=true;

    }

w1++;
w2++;
    
    
    if(p1w==true){
     if ( wkey == true) p1y = p1y - 3;
   if ( skey == true) p1y = p1y + 3;
    if ( akey == true) p1x = p1x - 3;
   if ( dkey == true) p1x = p1x + 3;
    }
    
      if(p1w==false && w1>200){
     if ( wkey == true) p1y = p1y - 4;
   if ( skey == true) p1y = p1y + 4;
    if ( akey == true) p1x = p1x - 4;
   if ( dkey == true) p1x = p1x + 4;
    }
    if(p2w==true){
    if ( upkey == true) p2y = p2y - 3;
   if ( downkey == true) p2y = p2y + 3;
    if ( lkey == true) p2x = p2x - 3;
   if ( rkey == true) p2x = p2x + 3;
    }
      if(p2w==false && w2> 200){
    if ( upkey == true) p2y = p2y - 4;
   if ( downkey == true) p2y = p2y + 4;
    if ( lkey == true) p2x = p2x - 4;
   if ( rkey == true) p2x = p2x + 4;
    }
    
    
    if(p1s==3000){
      p1ws=true;
      mode=gameover;
    }
    
        if(p2s==3000){
      p2ws=true;
      mode=gameover;
    }
  
}

void gameclicks(){
  
}
