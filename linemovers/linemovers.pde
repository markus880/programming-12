mover [] movers;
int nummovers;



void setup(){
 size(1440,840);
 nummovers=100;
movers= new mover[nummovers];
int i= 0;
while(i< nummovers){
  movers[i]=new mover();
  i++;
}
  
}

void draw(){
  
  int i =0;
  background(255,255,255);
  while(i < nummovers){ 
    movers[i].act();
    movers[i].showbody();
    movers[i].showlines();
    i++;
  }
  
  
}
