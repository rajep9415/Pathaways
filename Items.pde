class Item {

  //Fields

  String name;
  int column;
  int row;

  //Constructor

  Item(String n, int c, int r) {
    this.name = n;
    this.column = c;
    this.row = r;
  }

  //Methods

  void goTo() {
    fill(255, 0, 0);
    square(xCustomer, yCustomer, cellSize);
    if (xCustomer == (this.column + 1)*25){
      outOfAisle = true;
    }
    if (outOfAisle == false) {
      if (yCustomer <= (8+1)*25) {
        if (yCustomer < (3+1)*25) {
          yCustomer += cellSize;
        }
        if (yCustomer > (3+1)*25) {
          yCustomer -= cellSize;
        }
      }

      if (yCustomer >= (8+1)*25) {
        if (yCustomer < (14+1)*25) {
          yCustomer += cellSize;
        }
        if (yCustomer > (14+1)*25) {
          yCustomer -= cellSize;
        }
      }
    }

    if (yCustomer == (3+1)*25 || yCustomer == (14 + 1)*25) {
      outOfAisle = true;
    }
    if (outOfAisle == true) {
      if (xCustomer < (this.column+1)*25) {
        //square(xCustomer, yCustomer, cellSize);
        xCustomer += cellSize;
      }
      if (xCustomer == (this.column+1)*25 && yCustomer < (this.row+1)*25) {
        yCustomer += cellSize;
      }

      if (xCustomer > (this.column+1)*25) {
        //square(xCustomer, yCustomer, cellSize);
        xCustomer -= cellSize;
      }
      if (xCustomer == (this.column+1)*25 && yCustomer > (this.row+1)*25) {
        yCustomer -= cellSize;
      }

      if (xCustomer == (this.column+1)*25 && yCustomer == (this.row+1)*25) {
        
        if (timeCount <= 1){
          xCustomer = (this.column+1)*25;
          yCustomer = (this.row+1)*25;
          timeCount += 1;
        }
        else{
          timeCount = 0;
          outOfAisle = false;
          //reachedDestination = true;
          DestinationSet = false;
        }
        
      }
    }
  }
}
