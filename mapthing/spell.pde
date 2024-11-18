class Fspell extends FGameObject{
 float jx,jy,jvx,jvy;
 
 
 Fspell(float x, float y){
    super();
    setPosition(x,y);
    setName("jeff");
    setRotatable(false);
  }
 
 void act(){
  jx=getX();
  jy= getY();
  
   jvy= (jy-player.getY())/(jx-player.getX());
    jvx=(jx-player.getX())/(jy-player.getY());
    println("hi");
    circle(jx,jy,10);
    jx=jx+jvx;
    jy=jy+jvy;
 }
 void animate(){
    circle(jx,jy,10);
    
 }
    
}
