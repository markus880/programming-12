void game(){
  background(255);
  fill(255);
  strokeWeight(1);
  circle(p1x,p1y,60);
    circle(p2x,p2y,60);
    textSize(200);
    fill(0);
text(p1s,400,100);
    
    if(dist(p1x,p1y, width/2, height/2)<40){
      noit=false;
      p1s++;
    }
    if(noit==true){
    circle(width/2, height/2,20);
    }
    
     if ( wkey == true) p1y = p1y - 3;
   if ( skey == true) p1y = p1y + 3;
    if ( akey == true) p1x = p1x - 3;
   if ( dkey == true) p1x = p1x + 3;
   
    if ( upkey == true) p2y = p2y - 3;
   if ( downkey == true) p2y = p2y + 3;
    if ( lkey == true) p2x = p2x - 3;
   if ( rkey == true) p2x = p2x + 3;
  
  
}

void gameclicks(){
  
}
