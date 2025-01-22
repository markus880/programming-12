class bullet extends GameObject {
  PVector dir ;
  float speed;
  bullet() {
    super(eyeX, eyeY, eyeZ, 10);
    speed=50;
    float vx=cos(leftRightHeadAngle);
    float vy=tan (upDownHeadAngle);
    float vz=sin(leftRightHeadAngle);
    dir=new  PVector(vx, vy, vz);
    dir.setMag(speed);
  }
  void show() {
    boxy(loc.x, loc.y, loc.z, dia, 10);
  }
  void act() {
    int hitx=int(loc.x+2000)/gridsize;
    int hity=int(loc.z+2000)/gridsize;
    if (map.get(hitx, hity)==white) {
      loc.add(dir);
    }
    if (map.get(hitx, hity)==red) {
      lives=0;
      score++;

all=true;
      
    
      for (int i=0; i<5; i++) {
        objects.add(new particle(loc));
      }
     if(map.get(hitx, hity)==black) {
      lives=0;
      for (int i=0; i<5; i++) {
        objects.add(new particle(loc));
      }
    }
  }
}
}
