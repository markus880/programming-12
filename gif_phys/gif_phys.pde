


void game(){

start.pause();
 games.play();
 handleplayerintput();
netcols();
scroes();
pcols();
v1++;
v2++;

t++;
if(t==400){
  ast.setVelocity(random(-750,750),random(-750, 750));
  t=0;
  
}


  
}
  
