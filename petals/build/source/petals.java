import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class petals extends PApplet {

int totalPetals = 360;
Petal[] petals = new Petal[totalPetals];

float rotation = 0.0f;

int width, height;

public void setup() {
 width = 1200;
 height = 600;
 
 noStroke();
 
 background(0);
}

class Petal
{
  float x = 0.0f;
  float y = 0.0f;
  float rotation = 0.0f;
  float scaleVar = 1.0f;

  int baseColor = color(0, 255, 255, 150);
  int detailColor = color(255, 255, 255, 160);
  int trimColor = color(0,0,0);

  public void render() {
    fill(this.baseColor);
    ellipse(this.x, this.y, 5, 5);
  }
}
  public void settings() {  size(1200, 600);  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "petals" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
