//global initated variables //<>//
int w = 80;
int cols, rows;
Cell [][] grid;

Cell current;

void setup() {
  //draws the window
  size(400, 400);

  //sets number of columns = to width divided by object width
  cols = width/w;

  //sets number of rows = to height divided by object width
  rows = height/w;

  //sets a grid array to columns and rows (I.E. (5,3) would be column 5 row 3
  grid = new Cell[cols][rows];

  //creates the cells inside of the grid
  for (int j = 0; j < rows; j++) {
    for (int i = 0; i < cols; i++) {
      grid[i][j] = new Cell(i, j);
    }
  }




  current = grid[0][0];
}

void draw() {
  //sets background color
  background(0);



  //displays the grid
  for (int i=0; i<grid.length; i++) {
    for (int j=0; j<grid.length; j++) {
      grid[i][j].display();
    }
  }
  current.visited = true;
  current.checkNeighbors(1,2);
}

class Cell {
  //Cell Class variables
  int x, y;
  boolean walls[] = {true, true, true, true};
  boolean visited = false;

  
  void checkNeighbors(int i, int j){
    Cell neighbors [];
  
  Cell top = grid[i][j-1];
  Cell right = grid[i+1][j];
  Cell bottom = grid[i][j+1];
  Cell left = grid [i-1][j];
  
  if(!top.visited) {
   
  }
  if(!right.visited) {
   
  }
  if(!bottom.visited) {
  
  }
  if(!left.visited) {
   
  }
    

  }

  //creates temporary variables when Cell is called to create grid
  Cell(int i, int j) {
    x = i*w;
    y = j*w;
    
  }

  int index(int i, int j) {
    return i + j + cols;
  }



  void display() {
    //trbl = top right bottom left

    //creates walls for top side of cells
    noFill();
    stroke(255);
    if (walls[0]) {
      line(x, y, x+w, y);
    }

    //creates walls for right side of cells
    if (walls[1]) {
      line(x+w, y, x+w, y+w);
    }

    //creates walls for botttom side of cells
    if (walls[2]) {
      line(x+w, y+w, x, y+w);
    }

    //creates walls for left side of cells
    if (walls[3]) {
      line(x, y+w, x, y);
    }

    //colors current cell
    if (visited) {
      fill(255, 0, 255, 100);
      rect(x, y, w, w);
    }
  }
}