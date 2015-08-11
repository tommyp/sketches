

void setup() {
  size(600, 600);
  rectMode(CORNER);
  noStroke();
  frameRate(1);
  randomSeed(hour() + minute() + second() + millis());
}

void draw() {
  background(255);
  
  int num_of_squares = 25;
  int rows = (int) sqrt(num_of_squares);
  int cols = rows;
  int gap = 5;
  int cellsize = (width/cols) - (gap*2);
  
  for (int i=0; i<cols; i++) {
    for (int j=0; j<rows; j++) {
      float offsetX = cellsize/16.0;
      float offsetY = cellsize/16.0;
      
      int colorSwitch = (int) random(0, 5);
      println(colorSwitch);
      if (colorSwitch == 4) {
        fill(163, 0, 57); // rectangle
      } else {
        fill(170, 0, 67, 180); // rectangle
      }
      rect(random(1, gap) + (i+1) + cellsize * i, random(1, gap) * (j+1) + cellsize * j, cellsize, cellsize);
    }
  }
  
  if (keyPressed == true && key=='s') {
    saveFrame("25squares.jpg");
  }
}