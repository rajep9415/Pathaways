import g4p_controls.*;


int n = 20;
boolean[][] cells = new boolean[n][n];

float pad = 50;
float cellSize;
boolean isCustomer = false;
float xCustomer = 50;
float yCustomer = 50;
boolean reachedDestination = false;
boolean outOfAisle = false;
boolean DestinationSet = false;
int timeCount = 0;
int ItemNum = -1;
Item[] items;

void setup(){
  size(600, 600);
  createGUI();
  cellSize = (width-2*pad)/n;
  frameRate( 2 );  
  
  //Item milk = new Item("milk", 17, 10);
  items = createItems();
}


void draw(){
  background(0, 255, 0);

  //Drawing the Store
  float y = pad; //the top of the grid
  
  for(int i = 0; i < n; i++) {
    float x = pad;
    
    for(int j = 0; j < n; j++) {
      
      //Creating the aisles
      int[] aisleArray = {3, 5, 9, 11}; //Try to change this so that the if statement goes through array values
      if ( j == 3 || j == 5 || j == 9 || j == 11 || j == 15 || j == 17){
        if ( i >= 3 && i <= 12 ){
        cells[i][j] = true;}}
      if ( i > 15){
        cells[i][j] = true;}
      //if ( i == 0 && j == 0){
      //   fill(255, 0, 0);
      //   isCustomer = true; 
      //}
      else
        isCustomer = false;
        
      if ( cells[i][j] == true ) 
        fill(255);
        
      else
        fill(0);
      
      if (isCustomer == true){
        for (int k = 0; k < 4; k++){
          //cells[i][j+k]
          fill(255, 0, 0); 
      }
      }
      
      square(x, y, cellSize);
      textSize(20);
      text("Fruits",110, 25);
      text("Veg",175, 25);
      text("Grain",260, 25);
      text("Snacks",320, 25);
      text("Meat",415, 25);
      text("Dairy",475, 25);
      x += cellSize;
    }
    
    y += cellSize;
  }
  
 //Draw Customer
 
 
 //if(reachedDestination == true){
 //  items[1].goTo();
 //} 
 fill(255, 0, 0);
 square(xCustomer, yCustomer, cellSize);
 if(DestinationSet == true){
   items[ItemNum].goTo();
 }
 

 // float xCustomer = pad;
 // float yCustomer = pad;
 //// while ( xCustomer < 150 ){
  
 // fill(255, 0, 0);
  //square(xCustomer, yCustomer, cellSize);
 // xCustomer = pad + cellSize;
  //yCustomer = pad + cellSize;
  //}
}


Item[] createItems(){
  
  //Array of runners
  Item[] items = {};
  
  //Objects for each race
  //Item item1 = new Item("Milk",17, 10);
  //Item item2 = new Item("Eggs", 11, 12); 

  //Adding each participant to the array
  //items = (Item[]) append(items,item1);
  //items = (Item[]) append(items,item2);
  //print(items);
  //Returning the array of races
  return items;
}
