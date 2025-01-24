class particle extends GameObject {
  PVector dir ;
  float speed, k,nj;

  particle(PVector loc) {
    super(loc.x, loc.y, loc.z, 10);
    lives=100;
      k= random (-4, 4);
      nj= random (-4, 4);
  }
  void show() {

    boxy(loc.x, loc.y, loc.z, dia, 10);
    boxy(loc.x, loc.y, loc.z, dia, 10);
    boxy(loc.x, loc.y, loc.z, dia, 10);
    boxy(loc.x, loc.y, loc.z, dia, 10);
    boxy(loc.x, loc.y, loc.z, dia, 10);
    boxy(loc.x, loc.y, loc.z, dia, 10);
    
  }
  void act() {

    for (int j=0; j<1; j++) {
    
    }
    lives--;

    if (loc.y<height-2) {

      loc.x=loc.x+k;
      loc.z=loc.z+nj;

      loc.y=loc.y+4;
    }
  }
}
