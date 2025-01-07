  void mouseReleased(){
    if(mode == intro){
    introclicks();
 }else if (mode == game){
   
 }
 else if (mode == over){
   gameoverclicks();
 }else if(mode == app1||mode == app2){
  appclicks();
 }else if(mode==app3){
   mode=over;
     talking.pause();
  talking.rewind();
 }
  
}
  
