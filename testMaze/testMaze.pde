
int w = 80;
int cols, rows;
Cell grid[];

void setup() {
  size(400, 400);

  cols = width/w;
  rows = height/w;
  
  grid = new Cell(cols, rows);

  for (int j = 0; j < rows; j++) {
    for (int i = 0; i < cols; i++) {
      int index = (i+j*w);
      grid[index]= new Cell(i, j);
    }
  }
}

void draw() {
  background(0);

  for (int j = 0; j<rows; j++) {
    for (int i = 0; i<cols; i++) {
      int index = (i+j*w);
      grid[index].display();
    }
  }
}

class Cell {
  int x, y;
  boolean walls[] = {true, true, true, true};
  Cell (int i, int j) {
    x = i;
    y = j;
  }

  void display() {

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
  }
}