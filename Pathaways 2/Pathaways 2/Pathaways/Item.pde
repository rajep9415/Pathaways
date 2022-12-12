class Item {
  String name;
  //String department;
  int column;
  int row;
  int amt;
  float price;



  Item (String n, int c, int r, int a, float p) {
    this.name = n;
    this.column = c;
    this.row = r;
    this.amt = a;
    this.price = p;
    
  }

  void addToCart() {
    if (this.amt != 0) {
      for (int i = 0; i < this.amt; i ++)
        cart.add(new String(this.name));
    }
  }

  //void addToCost() {
  //  totalCost += this.price;
  //}

  //Having the customer go to the aisle
  void goTo() {

    //Indicating once you've reached the desired product
    if (xCustomer == (this.column)*50 && yCustomer == (this.row)*50) {
      fill(0, 255, 0);
      stroke(0);
      square(xCustomer, yCustomer, cellSize);
    } 
    //Indicating where the customer is
    else {
      fill(255, 0, 0);
      stroke(0);
      square(xCustomer, yCustomer, cellSize);
    }
    
    //If the next product is 
    if (xCustomer == (this.column)*50) {
      outOfAisle = true;
    }

    //If customer is still in an aisle, leave it
    if (outOfAisle == false) {
      if (this.row == 9){
          if (yCustomer < (8)*50) {
          yCustomer += cellSize;
          }
        if (yCustomer > (8)*50) {
          goToAisle();
        }
      }
      else{
      leaveTheAisle();}
    }

    //If customer has successfully left the aisle
    if (yCustomer == (2)*50 || yCustomer == (8)*50) {
      outOfAisle = true;
    }

    //Getting the customer to their product once they've exited their aisle
    if (outOfAisle == true) {
      
      //If their product is in the fridge or freezer
      if ( this.row == 9) {
        
        //If their product is below an aisle
        if ( yCustomer < 400) {
          
          if (this.column == 2) {
            goToAisle2(1);} 
          else if (this.column == 4) {
            goToAisle2(3);} 
          else if (this.column == 7) {
            goToAisle2(6);} 
          else if (this.column == 9) {
            goToAisle2(8);} 
          else {
            goToAisle();}
          }
        else {
          goToAisle();}
        } 
      //If their product is in one of the aisle  
      else {
        goToAisle();}

      //If the customer has reached its destination
      if (xCustomer == (this.column)*50 && yCustomer == (this.row)*50) {

        //Wait period to collect the item
        if (timeCount < 1) {
          xCustomer = (this.column)*50;
          yCustomer = (this.row)*50;
          timeCount += 1;
          
          totalCost += this.price;
        } 
        
        else {
          timeCount = 0;
          outOfAisle = false;
          DestinationSet = false;
          goToBool = false;
          count = 0;
        }
      }
    }
  }






  //SHOW PATH
  //Showing the fastest path the customer should take to a certain product
  void showPath() {
    
    if (xCustomer == (this.column)*50 && yCustomer == (this.row)*50) {
      fill(0, 255, 0);
      stroke(0, 255, 0);
      square(xCustomer, yCustomer, cellSize);
    } else {
      fill(255, 255, 0);
      stroke(255, 255, 0);
      square(xCustomer, yCustomer, cellSize);
      colour[(yCustomer/50)-1][(xCustomer/50)-1] = color(255, 255, 0);
    }
    
    if (xCustomer == (this.column)*50) {
      outOfAisle = true; 
    }
    
    
    if (outOfAisle == false) {
      if (this.row == 9){
          if (yCustomer < (8)*50) {
          yCustomer += cellSize;
          }
        if (yCustomer > (8)*50) {
          goToAisle();
        }
      }
      
      //else if (this.row < yCustomer/50){
      //  if (yCustomer < (2)*50) {
      //  yCustomer += cellSize;
      //}
      //if (yCustomer > (2)*50) {
      //  yCustomer -= cellSize;
      //}
      //}
      
      //else if (this.row > yCustomer/50){
      //  if (yCustomer < (8)*50) {
      //    yCustomer += cellSize;
      //    }
      //  if (yCustomer > (8)*50) {
      //    goToAisle();
      //  }
      //}
      
      else{
        leaveTheAisle();}
    }

    if (yCustomer == (2)*50 || yCustomer == (8)*50) {
      outOfAisle = true;
    }
    
    if (outOfAisle == true) {
      
      //If their product is in the fridge or freezer
      if ( this.row == 9) {
        
        //If their product is below an aisle
        if ( yCustomer < 400) {
          
          if (this.column == 2) {
            goToAisle2(1);} 
          else if (this.column == 4) {
            goToAisle2(3);} 
          else if (this.column == 7) {
            goToAisle2(6);} 
          else if (this.column == 9) {
            goToAisle2(8);} 
          else {
            goToAisle();}
          }
        else {
          goToAisle();}
        } 
      //If their product is in one of the aisle  
      else {
        goToAisle();}

      if (xCustomer == (this.column)*50 && yCustomer == (this.row)*50) {
        
        xCustomer = (this.column)*50;
        yCustomer = (this.row)*50;
        outOfAisle = false;
        DestinationSet = false;
        
      }
    }
  }



  void fastestPath() {
  }




  //Function to leave the aisle
  void leaveTheAisle() {
    //If the customer is nearer to the top of the aisle
    if (yCustomer <= (4)*50) {
      if (yCustomer < (2)*50) {
        yCustomer += cellSize;
      }
      if (yCustomer > (2)*50) {
        yCustomer -= cellSize;
      }
    }
    //If the customer is nearer to the bottom of the aisle
    if (yCustomer >= (5)*50) {
      if (yCustomer < (8)*50) {
        yCustomer += cellSize;
      }
      if (yCustomer > (8)*50) {
        yCustomer -= cellSize;
      }
    }
  }

  //Function to go to desired product
  void goToAisle() {
    if (xCustomer < (this.column)*50) {
      //square(xCustomer, yCustomer, cellSize);
      xCustomer += cellSize;
    }
    if (xCustomer == (this.column)*50 && yCustomer < (this.row)*50) {
      yCustomer += cellSize;
    }

    if (xCustomer > (this.column)*50) {
      //square(xCustomer, yCustomer, cellSize);
      xCustomer -= cellSize;
    }
    if (xCustomer == (this.column)*50 && yCustomer > (this.row)*50) {
      yCustomer -= cellSize;
    }
  }

  //Function to go to the fridge/freezer product below an aisle
  void goToAisle2(int aisle) {
    if (xCustomer < (aisle)*50) {
      xCustomer += cellSize;
    }
    if (xCustomer == (aisle)*50 && yCustomer < (this.row)*50) {
      yCustomer += cellSize;
    }

    if (xCustomer > (aisle)*50) {
      xCustomer -= cellSize;
    }
    if (xCustomer == (aisle)*50 && yCustomer > (this.row)*50) {
      yCustomer -= cellSize;
    }
  }
  
}  
