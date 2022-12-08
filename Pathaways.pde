import g4p_controls.*;

  Item milk = new Item("Milk", "Dairy",0);
  Item yogurt = new Item("Yogurt", "Dairy",0);
  Item wBread = new Item("White Bread", "Grains",0);
  Item crackers = new Item("Crackers", "Grains",0);
  Item beef = new Item("Beef", "Meat",0);
  Item chicken = new Item("Chicken", "Meat",0);
  Item soupc = new Item("Soup Can", "Non-perishables",0);
  Item tomatoS = new Item("Tomato Sauce", "Non-perishables",0);
  boolean done = false;
  
  int i = 1;
  
ArrayList<String> cart = new ArrayList<String>();

void setup() {
  
  size(400,400);
  createGUI();
  milk.addToCart();
  yogurt.addToCart();
  wBread.addToCart();
  crackers.addToCart();
  beef.addToCart();
  chicken.addToCart();
  tomatoS.addToCart();
  soupc.addToCart();
  
}

void draw(){
  if (done == true & i == 1){
    printArray(cart); 
    println("There are", cart.size(), "items in your cart");
    i = i + 1;}
}
