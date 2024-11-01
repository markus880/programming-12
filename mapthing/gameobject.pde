class FGameObject extends FBox {


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
