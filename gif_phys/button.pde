class button {
  //intsance variable
  float x, y, w, h;
  boolean clicked, in;
  color highlight, normal;
  String text;
  PImage cake;


  //constructor

  button(PImage c , int _x, int _y, int _w, int _h, color norm, color high, boolean clicked) {

    x= _x;
    y=_y;
    w= _w;
    h= _h;
    highlight= high;
    normal= norm;
    clicked= false;
    cake= c;
    text = "";
  }
  
   button(String t , int _x, int _y, int _w, int _h, color norm, color high, boolean clicked) {

    x= _x;
    y=_y;
    w= _w;
    h= _h;
    highlight= high;
    normal= norm;
    clicked= false;
   text=t;
    cake = null;
  }

  //behavior





  void show() {

    i();
    rec();
    cli();
    if (cake != null)  tex();
    else{
      txt();
    }
  }
  void rec() {

    rectMode(CENTER);
    if (in==true) {
      fill(highlight);
    } else {
      fill(normal);
    }
    stroke(0);
    strokeWeight(4);
    rect(x, y, w, h, 30);
  }
  void i() {
    if (mouseX>x-w/2 && mouseX< x+w/2 && y+h/2>mouseY &&mouseY> y-h/2) {
      in=true;
    } else {
      in=false;
    }
  }

  void tex() {
  
  }

  void cli() {
    if (mouseReleased && in==true) {
      clicked= true;
    } else {
      clicked=false;
    }
    if (clicked==true) {
      
    }
    
 
  }



void txt(){
  textAlign(CENTER,CENTER);
  if(in==true) fill(normal);
  if(in==false) fill(highlight);
  textSize(100);
  text(text,x,y);
  
}
  void act() {
    if (clicked==true) mode=game;
  }
}
