button[] mybutton;
int n= 5;


void setup() {
  size(1440, 840);
   mybutton= new button[n];


  int i= 0;
  while (i<n) {
    mybutton[i]= new button();
    i++;
  }
}
void draw() {
  background(0);
   int i= 0;
  while (i<n) {
  mybutton[i].act();
  mybutton[i].show();
     i++;
  }
  click();
}
