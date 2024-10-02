class mover {

  PVector location;
  PVector velo;
  float d;
  boolean alive;

  mover() {

    d= 100;
    location= new PVector (random(0, width), random(0, height));
    velo = new PVector (3, 0);
    velo.rotate(radians(random(0, 360)));
    alive=true;
  }
  
  
  mover(float x , float y){
    
     d= 100;
    location= new PVector (x,y);
    velo = new PVector (3, 0);
    velo.rotate(radians(random(0, 360)));   
      alive=true;
    
    
    
  }
  
  
  

  void act() {
    move();
    bouncein();
    delete();
  }

void delete(){
  if (dist(location.x, location.y, mouseX, mouseY) < d/2 && mousePressed){
    alive=false;
  }
}



  void move() {
    location.add(velo);
  }

  void bouncein() {
    if (location.x<0 || location.x>width) velo.x=-velo.x;
    if (location.y<0 || location.y>height) velo.y = -velo.y;
  }


  void showbody() {
    noStroke();
    fill(0, 255, 0);
    circle(location.x, location.y, d);
    
  }

  void showlines() {

    int i = 0;
    while (i<  movers.size() ) {
      mover other = movers.get(i);
      float dist = dist(location.x, location.y, other.location.x, other.location.y);
      if (dist <= 200) {
        float a = map(dist, 0, 200, 255, 0);
        stroke(0, a);
        strokeWeight(2);
        line(location.x, location.y, other.location.x, other.location.y);
      }
      i++;
    }
  }
}
