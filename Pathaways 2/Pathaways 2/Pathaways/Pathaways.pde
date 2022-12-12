import g4p_controls.*;


int n = 10;
boolean[][] cells = new boolean[n][n];

int count = 0;
float pad = 50;
float cellSize;
boolean isCustomer = false;
boolean goToBool = false;
int xCustomer = 50;
int yCustomer = 50;
int oldXCustomer;
int oldYCustomer;
boolean outOfAisle = false;
boolean DestinationSet = false;
int timeCount = 0;
int ItemNum = -1;
Item[] items;
boolean black;
color[][] colour = new color[n][n];
boolean done = false;
int i = 1;
float totalCost = 0;
ArrayList<String> cart = new ArrayList<String>();

void setup() {
  
  size(600,600);
  createGUI();
  cellSize = (width-2*pad)/n;
  frameRate( 2 );
  items = createItems();
  
}

void draw(){
  if (done == true & i == 1){
    printArray(cart); 
    println("There are", cart.size(), "items in your cart");
    i = i + 1;}
    
  
  background(0, 200, 255);

  //Drawing the Store
  float y = pad; //the top of the grid
  
  for(int i = 0; i < n; i++) {
    float x = pad;
    
    for(int j = 0; j < n; j++) {
      
      //Creating the aisles
      
      
      if ( j == 1 || j == 3 || j == 6 || j == 8){
        if ( i >= 2 && i <= 6 ){
        cells[i][j] = true;}}
      if ( i > 8){
        cells[i][j] = true;}
      else
        isCustomer = false;
        
      if ( cells[i][j] == true ) {
        fill(255);
        black = false;}
        
      else{
        fill(0);
        black = true;}
      
      
      if (black == true)
        stroke(0);
      else
        stroke(255);
 
      if (colour[i][j] == color(255, 255, 0)){
        fill(255, 255, 0);
        stroke(255, 255, 0);
      }  
      square(x, y, cellSize);
      textSize(20);
      text("Fruits/",100, 25);
      text("Veg",110, 44);
      textSize(23);
      text("Grain",198, 35);
      text("Snacks",340, 35);
      text("Meat",450, 35);
      text("Fridge/Freezer",235, 585);
      text("Cost: ", 475, 585);
      if (totalCost > 10)
        text(totalCost, 543, 585);
      else
        text(totalCost, 554, 585);
      x += cellSize;
    }
    
    y += cellSize;
  }
  
 //Draw Customer
 
 
 if(DestinationSet == true){
   count += 1;
   if (count == 1){
     oldXCustomer = xCustomer;
     oldYCustomer = yCustomer;}
   items[ItemNum].showPath();
 }
 else if(goToBool == true){
   count += 1;
   for (int i = 0; i < n; i++)
     for (int j = 0; j < n; j++)
       colour[i][j] =color(0);
   if (count == 1){
     xCustomer = oldXCustomer;
     yCustomer = oldYCustomer;}
   items[ItemNum].goTo();
 }
 else{
 fill(255, 0, 0);
 stroke(0);
 square(xCustomer, yCustomer, cellSize);
 }
 
}

Item[] createItems(){
  
  //Array of runners
  Item[] items = {};
  
  //Returning the array of races
  return items;
}
