class targ extends GameObject {
  PVector dir ;
  float speed;

  targ(PVector loc) {
    super(loc.x,loc.y,loc.z,100);

  }
  void show() {

    boxy(loc.x,loc.y,loc.z, stone , 100);
 
  
  }
  void act() {
  }
}
