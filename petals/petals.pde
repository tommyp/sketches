int totalPetals = 600;

float rotation = 0.0;
// float angle = 120;
float angle = 137.5077640844293;

int width, height;
float radius = 50;
float ToRadians = PI / 180.0 ;

float radiusGrowth = 1.0049;

void setup() {
 width = 1200;
 height = 600;
 size(1200, 600);
 noStroke();
 smooth();
 background(0);
 for(int i = 0; i < totalPetals; i++) {
   rotation += angle;
   radius *= radiusGrowth;
   Petal petal = new Petal();
   petal.x = width/2 + radius*( cos(rotation*ToRadians) );
   petal.y = height/2 + radius*( sin(rotation*ToRadians) );
   petal.rotation = rotation * ToRadians;
   petal.scale += (i*2) / totalPetals;
   petal.render();
 }
}

class Petal {
  float x = 0.0;
  float y = 0.0;
  float rotation = 0.0;
  float scale = 1.0;

  color baseColor = color(0, 255, 255, 150);
  color detailColor = color(255, 255, 255, 160);
  color trimColor = color(0,0,0);

  void render() {
    pushMatrix();

    translate(this.x, this.y);
    fill(this.baseColor);
    rotate(this.rotation);
    scale(this.scale, this.scale);
    rect(-10, -1, 20, 2);
    ellipse(0, 0, 10, 10);
    fill(this.detailColor);
    ellipse(0, 0, 8, 8);
    fill(this.trimColor);
    ellipse(0, 0, 5, 5);

    popMatrix();
  }
}
