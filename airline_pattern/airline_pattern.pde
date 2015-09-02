void setup() {
  size(800, 800);
  rectMode(CENTER);
  background(#313C64);
  frameRate(1);
}

void draw() {
    fill(0, 0);
    stroke(#3D59BC);
    strokeWeight(10);
    for (int i = 0; i < 10; i++) {
      for (int j = 0; j < 10; j++) {
        int emptySquareChance = (int) random(0, 5);
        if (emptySquareChance != 4) {
          rect(50 + (100*i), 50 + (100*j), 50, 50);
        }
      }
    }
}