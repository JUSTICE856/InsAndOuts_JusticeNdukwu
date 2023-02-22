//Fun Laundry by Justice Ndukwu
//click to change background color & fill color
//In this theme i'm exploring the diffrent ways that laundry machines can be fun and interactive for users.

int value = 0;
float r;
float g;
float b;
float a;
float diam;
float x;
float y;


void setup()
{
  size(1080, 720);
  background(255);
  
}

void draw()
{
  
  fill(192, 192, 192);
  rect(166, 50, 450, 600);
  
  fill(105,105,105);
  rect(180, 160, 420, 450, 28);
  

  fill(255);
  strokeWeight(9);
  circle(395, 400, 360);
  
  
  fill(value);
  strokeWeight(5);
  rect(192,80 ,130, 60);
  
  fill(value);
  circle(470,110 ,80);
  
  fill(value);
  circle(560,110 ,80);
  
  fill(value);
  rect(192,620 ,400, 30);
  
  fill(255);
  rect(205, 105, 107, 10, 28);
  
  fill(255);
  circle(560, 110, 60);
  
  fill(255);
  circle(470, 110, 60);
  
  fill(0);
  rect(192,620 ,400, 30);
  
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  diam = random(20);
  frameRate(5);



  fill(r, g, b, a);
  circle(395, 400, 320);
  
 
}
void mouseClicked() {

background(207, 185, 151);
}
void mousePressed() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}
