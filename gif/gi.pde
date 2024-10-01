class gifed {
  PImage[] mygif;
  int x, y, speed, numf,  curf, w, h;

  String before, after;
  gifed(String bef, String aft, int nums, int sped, int _x, int _y) {
    curf=0;
    before= bef;
    after=aft;
    numf= nums;
    speed= sped;
    x= _x;
    y= _y;
    mygif= new PImage[nums];
    int i = 0;
    while ( i<numf) {
      mygif[i]= loadImage(bef+i+aft);

      i++;
    }
    w= mygif[0].width;
    h= mygif[0].height;
  }


  gifed(String bef, String aft, int nums, int sped, int _x, int _y, int _w, int _h) {
    this(bef, aft, nums, sped, _x, _y);
    w= _w;
    h= _h;
  }

  void show() {
    print(curf, numf);
    if (curf== numf) curf= 0;
    println(" --> ", curf, numf);
    image(mygif[curf], x, y, w, h);
    if ( frameCount % speed == 0) curf++;
  }
}
