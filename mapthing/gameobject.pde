class FGameObject extends FBox {

  int dir;
  final int l=-1;
  final int r= 1;
  FGameObject() {
    super(gridSize, gridSize);
  }

  void act() {
  }
 

  boolean istouching(String n) {
    ArrayList<FContact> contacts= getContacts();
    for (int i=0; i<contacts.size(); i++) {
      FContact fc= contacts.get(i);
      if (fc.contains(n)) {
        return true;
      }
    }
    return false;
  }
}
