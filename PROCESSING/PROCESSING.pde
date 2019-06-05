final int NUM = 60;
final PVector[] trail = new PVector[NUM];
 
void setup() 
{
  size(800, 600);
  smooth(500);
  noStroke();
  ellipseMode(CENTER);
 
  fill(255,140,0);
}
 
void draw() 
{
  PImage img;
img = loadImage("basket.jpg");
background(img);
 
  trail[NUM - 1] = new PVector(mouseX, mouseY); 
  for (int i = 0; i < NUM - 1; i++)
  {
    trail[i] = trail[i + 1];
  }
 
  if (trail[0] != null)
  {
    ellipse(trail[0].x, trail[0].y, 60, 60);
  }
}
