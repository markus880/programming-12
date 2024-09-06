


void setup(){
  size(1440,840);
}

void draw(){
  fill(26,234,229);
  rect(0,620,2000,400);
  boats();
}

void boats(){
  int x;
  x= 100;
  while(x<1300){
   boat(x,600);
  x=x+200;
  }
  
}
