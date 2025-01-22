class targ extends GameObject {
  PVector dir ;
  float speed;

  targ(PVector loc) {
    super(loc.x,loc.y,loc.z,100);

  }
  void show() {
if(all==false){
    boxy(loc.x,loc.y,loc.z, stone , 100);
}
if (all==true){
   boxy(loc.x,loc.y,loc.z, dia , 100);
  
}
  
  }
  void act() {
  }
}
