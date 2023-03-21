//Fun Laundry by Justice Ndukwu
//click to change background color & fill color
//In this theme i'm exploring the diffrent ways that laundry machines can be fun and interactive for users.
////Every time you click play the line changes at random.

int value = 0;
float r;
float g;
float b;
float a;
float diam;
float x;
float y;
float[] distribution = new float[150];


void setup()
{
  size(1080, 720);
  background(255);
  for (int i = 0; i < distribution.length; i++) {
    distribution[i] = int(randomGaussian() * 10);
  
}
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
  
fill(255, 0, 0);

translate(width/2.7, width/2.7);
for (int i = 0; i < distribution.length; i++) {
rotate(TWO_PI/distribution.length);
    float dist = abs(distribution[i]);
    fill(255, 0, 0);
    circle(18, 164, 47);
    line(34,164,dist,30);   ////////In this peice of code the line changes at random. credit - proccessing refrence - https://processing.org/reference/randomGaussian_.html
    
 
}

}

void mousePressed() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}
