/*int n = 20;
color[][] cells = new color[n][n];

float pad = 50;
float cellSize;
boolean isCustomer = false;
void setup(){
  size(600, 600);
  cellSize = (width-2*pad)/n;
  frameRate( 2 );  
}


void draw(){
  background(0, 255, 0);



  float y = pad; //the top of the grid
  
  for(int i = 0; i < n; i++) {
    float x = pad;
    
    for(int j = 0; j < n; j++) {
      
      //Creating the aisles
      int[] aisleArray = {3, 5, 9, 11}; //Try to change this so that the if statement goes through array values
      if ( j == 3 || j == 5 || j == 9 || j == 11 || j == 15 || j == 17){
        if ( i >= 3 && i <= 12 ){
        cells[i][j] = color(255);}
      else
        cells[i][j] = color(0);}
      if ( i > 15){
        cells[i][j] = color(255);}
      
      //if ( i == 0 && j == 0){
       //  fill(255, 0, 0);
       //  cells[i][j] = color(255, 0, 0);
       //  isCustomer = true; 
     // }
     // else
       // isCustomer = false;
        
      //if ( cells[i][j] == true ) 
        //fill(255);
        
      //else
        //fill(0);
      
      //if (isCustomer == true){
      //  for (int k = 0; k < 4; k++){
      //    cells[i][j+k]
      //  fill(255, 0, 0); 
      //}
      //}
      
      square(x, y, cellSize);   
      
      x += cellSize;
    }
    
    y += cellSize;
  }
 // float xCustomer = pad;
 // float yCustomer = pad;
 //// while ( xCustomer < 150 ){
  
 // fill(255, 0, 0);
 // square(xCustomer, yCustomer, cellSize);
 // xCustomer = pad + cellSize;
  //yCustomer = pad + cellSize;
  //}
}*/
