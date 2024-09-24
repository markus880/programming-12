button[] mybutton;
int n= 6;

color red= #FA1717;
color blue=#17CAFA;
color green= #34FA17;
color yellow=#F9FA17;
color pink= #FA17C9;
color orange= #FAA317;
color nims;
void setup() {
  size(1440, 840);
   mybutton= new button[n];
   background(0);
  
  
   
  // button(String t, int _x, int _y, int _w, int _h, color norm, color high, boolean clicked) 
}
void draw() {
  background(nims);
    click();
   int i= 0;
 mybutton[0]= new button("red",100,100,100,100,red,blue,false) ;
   mybutton[1]= new button("blue",250,100,100,100,blue,red,false) ;
      mybutton[2]= new button("green",100,500,100,500,green,pink,false) ;
          mybutton[3]= new button("pink",250,500,100,500,pink,green,false) ;
             mybutton[4]= new button("yellow",800,120,500,200,yellow,orange,false) ;
                   mybutton[5]= new button("orange",800,400,500,200,orange,yellow,false) ;
  while (i<n) {

  mybutton[i].show();
    mybutton[i].act();
     i++;
  }
 
}
