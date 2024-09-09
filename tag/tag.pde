int mode;
final int intro=0;
final int game=1;
final int gameover= 2; 
int p1x, p1y, p2x, p2y,p1s,p2s;
PImage tag;
boolean wkey, skey,akey,dkey, upkey, downkey,lkey,rkey,noit;

void setup(){
  size(1440,840);
  tag= loadImage("tag.jpg");
   wkey=skey=akey=dkey= upkey= downkey=lkey=rkey=false;
   p1x=50;
   p1y= p2y=420;
   p2x= 1390;
   noit=true;
   p1s=p2s=0;
}



void draw(){
  
  if(mode == intro){
    intro();
 }else if (mode == game){
    game();
 }else if (mode == gameover){
   gameover();
 }else{
   println("Error: Mode = " + mode);
 }
  
}
