boolean mouseReleased, wasPressed;

void click(){
  if (mousePressed) wasPressed= true;
  if(wasPressed && !mousePressed ){
    mouseReleased= true;
    wasPressed= false;
  }else{
    mouseReleased= false;
  }
}
