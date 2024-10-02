ArrayList<mover>  movers;

int nummovers=50;


void setup() {
  size(1440, 840);

  movers= new ArrayList();
  int i= 0;
  while (i< nummovers) {
    movers.add(new mover());
    i++;
  }
}

void draw() {

  int i =0;
  background(255, 255, 255);
  while (i < movers.size() ) {
    mover m = movers.get(i);
    m.act();
    m.showbody();
    m.showlines();
    i++;
  }
}

void mouseReleased(){
 
}
