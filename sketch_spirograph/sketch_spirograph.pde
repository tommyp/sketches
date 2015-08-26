int red = 0;
int green = 0;
int blue = 0;

void setup() {
 size(800, 800);
 background(255);
 rectMode(CENTER);
}

void draw() {
 fill(255, 0);
 int i = 1;
 
  int x = 400;
  int y = 400;
  
  //drawCircles(x, y);
  ellipse(x, y, mouseX, mouseY);
 
 while (i < 20) {
   drawCircles(x, y, i);
   i++;
 }
}

void drawCircles(int x, int y, int i) { 
  stroke(red, green, blue);
  strokeWeight(5);
 switch(i % 2) {
     case 0:
      ellipse(x - (50*i), x - (50*i), mouseX, mouseY);
      ellipse(x + (50*i), x - (50*i), mouseX, mouseY);
    
    case 1:
      ellipse(x - (100*i), x + (100*i), mouseX, mouseY);
      ellipse(x + (100*i), x + (100*i), mouseX, mouseY);
   }
}

void mousePressed() {
  setup();
  background(255);
}

void mouseMoved() {
  red = (int) random(0, 255);
  green = (int) random(0, 255);
  blue = (int) random(0, 255);
}