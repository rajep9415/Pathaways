class Item {
  String name;
  String department;
  int amt;
  
  Item (String n, String d, int a){
    this.name = n;
    this.amt = a;
    this.department = d;
  }
  
  void addToCart(){
    if (this.amt != 0){
      for (int i = 0; i < this.amt; i ++)
        cart.add(new String(this.name));
  }
  }
    
  
  
}
