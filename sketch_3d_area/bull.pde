class bullet extends GameObject {
  PVector dir ;
  float speed;
  int km;
  bullet() {
    super(eyeX, eyeY, eyeZ, 10);
    speed=50;
    float vx=cos(leftRightHeadAngle);
    float vy=tan (upDownHeadAngle);
    float vz=sin(leftRightHeadAngle);
    dir=new  PVector(vx, vy, vz);
    dir.setMag(speed);
    km=0;
  }
  void show() {
    boxy(loc.x, loc.y, loc.z, dia, 10);
  }
  void act() {
    km--;
    int hitx=int(loc.x+2000)/gridsize;
    int hity=int(loc.z+2000)/gridsize;
    if (map.get(hitx, hity)==white) {
      loc.add(dir);
    }
    if (map.get(hitx, hity)==red) {
      lives=0;
      score++;


      for (int i=0; i<5; i++) {
        objects.add(new particle(loc));
         objects.add(new particle(loc));
          objects.add(new particle(loc));
           objects.add(new particle(loc));
      }
      loc.x=1500;
      if(km<5){
      all=!all;
      
      km=100;
      }
      }
     if(map.get(hitx, hity)==black) {
      lives=0;
      for (int k=0; k<5; k++) {
        objects.add(new particle(loc));
         objects.add(new particle(loc));
          objects.add(new particle(loc));
           objects.add(new particle(loc));
      }
     }
        if(map.get(hitx, hity)==blue) {
      lives=0;
      for (int d=0; d<5; d++) {
        objects.add(new particle(loc));
         objects.add(new particle(loc));
          objects.add(new particle(loc));
           objects.add(new particle(loc));
      }
    }
  

}
}
