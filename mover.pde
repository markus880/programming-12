class button {
  //intsance variable
  float x, y, w, h;
  boolean clicked;
  color highlight, normal;
  String text; 

  //constructor

  button(String t, int _x, int _y, int _w, int _h, color norm, color high, boolean clicked) {
   
    x= _x;
    y=_y; 
    w= _w;
    h= _h; 
    text= t;
highlight= high;
normal= norm;
clicked= false;
  }

  //behavior
  void show() {
  rectMode(CENTER);
  if (mouseX>x-w/2 && mouseX< x+w/2 && y+h/2>mouseY &&mouseY> y-h/2){
    fill(highlight);
  }else{
    fill(normal);
  }
  stroke(0);
  strokeWeight(4);
  rect(x,y,w,h,30);
  
  
  textAlign(CENTER,CENTER);
   if (mouseX>x-w/2 && mouseX< x+w/2 && y+h/2>mouseY &&mouseY> y-h/2){
  fill(normal);
     
      }else{
        fill(highlight);
      }
      textSize(w/4);
      text(text,x,y);
      
      if(mouseReleased && mouseX>x-w/2 && mouseX< x+w/2 && y+h/2>mouseY &&mouseY> y-h/2){
      clicked= true;
      }else{
        clicked= false;
      }
      
      
  }

  void act() {
  
    
    
  }
}
