void keyPressed(){
  
  if( key == 'w' || key =='W') wkey= true;
   if( key == 's' || key =='S')skey=true;
    if( key == 'd' || key =='D') dkey= true;
   if( key == 'a' || key =='A')akey=true;
   if( keyCode == UP ) upkey = true;
   if( keyCode == DOWN) downkey = true;
      if( keyCode == LEFT ) lkey = true;
   if( keyCode == RIGHT) rkey = true;
    if( keyCode == ' ') spkey = true;
     if( key == 'x' || key =='X') xkey= true;
}

void keyReleased(){
  
   if( key == 'w' || key =='W') wkey= false;
   if( key == 's' || key =='S')skey=false;
     if( key == 'd' || key =='D') dkey= false;
   if( key == 'a' || key =='A')akey=false;
        if( key == 'x' || key =='X') grac=grac*-1;
      if( key == ' ') spkey= false;
    if( keyCode == UP) upkey = false;
   if( keyCode == DOWN) downkey = false;
      if( keyCode == LEFT ) lkey = false;
   if( keyCode == RIGHT) rkey = false;

}
