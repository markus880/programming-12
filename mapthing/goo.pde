class FGoomba extends FGameObject {
  int direction= l;
  int speed= 50;
  int frame= 0;
  FGoomba(float x, float y){
    super();
    setPosition(x,y);
    setName("goomba");
    setRotatable(false);
  }
  void act(){
    animate();
    collide();
    move();
  }
  void animate(){
    if (frame>=goomba.length) frame=0;
    if (frameCount %5==0){
      if (direction==r)attachImage(goomba[frame]);
            if (direction==l)attachImage(reverseImage(goomba[frame]));
            frame++;
    }
  }
void collide(){
}
void move(){
  
}
}
