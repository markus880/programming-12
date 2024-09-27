class gifed{
  PImage[] mygif;
  int x, y, speed, numf;
  String before, after;
  gifed(String bef, String aft,int nums, int sped,int _x, int _y){
    
   before= bef;
   after=aft;
   numf= nums;
   speed= sped;
   x= _x;
   y= _y;
   mygif= new PImage[nums];
     int i = 0;
  while( i<nums){
      mygif[i]= loadImage("frame_"+i+"_delay-0.1s.gif");
    
   i++;
  }
  }
  
  


void show(){
    
  int j=0;
 
 if(j<8){
  image(mygif[j],0,0);
  j++;
 }else{
   j=0;
 }
}

    

    
   
    
  
  
}
