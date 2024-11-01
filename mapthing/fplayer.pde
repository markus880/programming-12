class FPlayer extends FGameObject {

  FPlayer() {
    super ();
    setPosition(300, 0);
    setFillColor(green);
    fill(250, 0, 0);
    setName("player");
    setRotatable(false);
  }

  void act() {

    hinput();
    if (istouching("spike")) {
      setPosition(0, 0);
    }
  }
  void hinput() {
    float p1vx = player.getVelocityX();
    float p1vy = player.getVelocityY();

    if (dkey==true) {
      player.setVelocity(250, p1vy);
    }

    if (akey==true) {
      player.setVelocity(-250, p1vy);
    }
    if (wkey==true) {
      player.setVelocity(p1vx, -250);
    }
    if (skey==true) {
      player.setVelocity(p1vx, 250);
    }
  }
}
