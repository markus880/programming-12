


float x, y, sun, moon, s, m;

void setup() {
  x=1;
  y=1;
  m=5;
  s=5;
  moon=840;
  size(1440, 840);
}

void draw() {

  background(89, 218, 258);
  fill(0, 0, 0, x);
  rect(0, 0, width, height);
  x=x+y;
  println(moon, m, x, y);
  if (x>0 && y>0) {
    moon=moon-m;
    if (moon==200) {
      m=0;
    }
  }else {
    m=5;
    moon=moon+m;
    if (moon==900) {
      m=0;
    }
  }


  if (x==400) {
    y=y*-1;
  }
  if (x==-150) {
    y=y*-1;
  }

  fill(72, 39, 39);
  square(400, 400, 400);
  fill(219, 63, 35);
  triangle(350, 400, 600, 300, 850, 400);
  rect(550, 600, 100, 200);
  fill(0);
  circle(625, 700, 20);

  fill(44, 133, 240);
  strokeWeight(4);
  square(450, 450, 100);
  square(650, 450, 100);
  line(650, 500, 750, 500);
  line(700, 450, 700, 550);
  line(450, 500, 550, 500);
  line(500, 450, 500, 550);

  circle(100, moon, 100);
}
