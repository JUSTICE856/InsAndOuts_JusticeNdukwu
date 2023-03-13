//Fun Laundry by Justice Ndukwu
//click to change background color & fill color
//In this theme i'm exploring the diffrent ways that laundry machines can be fun and interactive for users.


int value = 0;

PImage img;

int[] star;
String[] words;

void setup()
{
  size(1080, 720);
  background(255);
  
  star = new int[3];
  star[0] = 28;
  star[1] = 12;
  star[2] = 5;
  
  words = new String[5];
  
  for(int i = 0; i < 5; i++) {
    words[i] = " The first 5 index numbers is " + i;
    println(words[i]);
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
  
  
  fill(0);
  strokeWeight(5);
  rect(192,80 ,130, 60);
  
  fill(0);
  circle(470,110 ,80);
  
  fill(0);
  circle(560,110 ,80);
  
  fill(0);
  rect(192,620 ,400, 30);
  
  fill(255);
  rect(205, 105, 107, 10, 28);
  
  fill(255);
  if (mouseX < 100 && mouseY < 100) {    /////////move mouse up and down in terms of the y - axis to see rollover effect
  circle(560, 110, 60);
  }else if (mouseX > 100 && mouseY < 100) {
    fill(193);
   circle(560, 110, 60);
  }
  
  fill(255);
  circle(470, 110, 60);
  
  fill(0);
  rect(192,620 ,400, 30);
  
 
  
  
  
  PImage astro = loadImage("Astro.png");
  astro.resize(377, 374);
  image(astro, 206, 211);
  fill(frameCount/1);//////// Wait 11 seconds for the png to appear!!
  circle(395, 400, 328);
  fill(frameCount/1);//////// Wait 11 seconds for the png to appear!!
  circle(395, 400, 328);
  
  
  textSize(89);
  fill(0,100,0);
  text("Fun", 777, 285, -120);  // Specify a z-axis value
  text("Laundry", 695, 350);  // Default depth, no z-value specified
  textSize(19);
  fill(255,140,0);
  text("Justice Ndukwu", 830, 370, -790);
  
  
   
}

void mousePressed() {
  if (mouseX < width/3) { /////mouse click on left hand side turns white
    background(985);
  }   else if (mouseX < 2*width/3) { ///////mouse click on middle turns grey
      background(127);
  }   else {
      background(0); /////mouse click on right hand side turns black
}
}
