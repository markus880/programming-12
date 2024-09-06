void boat(int x, int y){
 pushMatrix();
 translate(x,y);
 fill(0);
 strokeWeight(0);
rect(0,0,100,40); 
triangle(100,0,100,40,160,0);
fill(0,0,255);
triangle(100,0,80,-30,80,0);
bubbles();
 
 
 
 
 popMatrix();
  
}
