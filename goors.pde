class Fjeff extends FGameObject {
  int direction= l;
  int speed= 50;
  int frame= 0;
  float jx, jy, jvx, jvy;
  float time= 180;
  int k = 0;

  Fjeff(float x, float y) {
    super();
    setPosition(x, y);
    setName("jeff");
    setRotatable(false);
    k = kladdy;
    kladdy++;
  }
  void act() {
    animate();
    collide();
    move();
    if (time<0&&dist(player.getX(), player.getY(), getX(), getY())<400) {
      shoot();
    }
    time--;
  }
  void animate() {
    if (frame>=wiz.length) frame=0;
    if (frameCount %5==0) {
      if (direction==l)attachImage(wiz[frame]);
      if (direction==r)attachImage(reverseImage(wiz[frame]));
      frame++;
    }
  }
  void collide() {

    //     if(istouching("walls")&&direction==l){
    //     setVelocity(-50,0);

    //   direction*=-1;

    //}
    // if(istouching("walls")&&direction==r){
    //     setVelocity(50,0);

    //   direction*=-1;

    //}
    if (istouching("walls")) {
      direction*=-1;
      setPosition(getX()+3*direction, getY());
    }



    if (istouching("wall")) {
      direction*=-1;
      setPosition(getX()+direction, getY());
    }
    if (istouching("player")) {
      if (player.getY()<getY()-gridSize/1.5) {
        world.remove(this);
        enemies.remove(this);
        mondead.rewind();
    mondead.play();
        e=45;
        player.setVelocity(player.getVelocityX(), -300);
      } else {
      }
    }
  }
  void move() {
    float vy= getVelocityY();
    setVelocity(speed*direction, vy);
  }


  void shoot() {
    jx=getX();
    jy= getY();
    if (lives==0) {
      time=180;
    }

    if (dist(player.getX(), player.getY(), getX(), getY())<400  ) {


      if (time<0) {
        print(k);

        Fspell sp= new Fspell(getX(), getY()-40);
        enemies.add(sp);
        world.add(sp);
        time=180;
      }
    }
  }
}
