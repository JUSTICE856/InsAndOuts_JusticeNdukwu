//Fun Laundry by Justice Ndukwu
//In this theme i'm exploring the diffrent ways that laundry machines can be fun and interactive for users.
///License information for images under a free license : Vecteezy - https://www.vecteezy.com/?utm_source=vecteezy-download&utm_medium=license-info-pdf&utm_campaign=license-info-document
////I've looked over the conditonal statement code from CatchBarnaby and took some inspriration from their and started to modify my code becuase i have something similar in mind when it comes to making my game. credit - Catch Barnaby : by Emily 




PImage found;
PImage tik;
PImage boat;
PImage winter;
PImage Music;
PImage Man;
PImage glass;
PImage beach;
PImage sun;
PImage where;
PImage camp;
PImage space;
PImage black;
PImage purple;
PImage santa;
PImage Present;
PImage Help;
PImage beachball;
PImage run;
PImage surf;
PImage balloonPop;
PImage bee;
PImage hive;
PImage night;
PImage all;
PImage pig;
PImage astro;
PImage Jail;
PImage img;
PImage menu;
int place;
int xPos=200;
int xDir=1;
int currentTime=0;
int savedTime=0; 
int xdirection = 1;  
int ydirection = 1;
int rad = 60; 
int[] dog;
float r1; ///random function that places items in diffrent places every time you reload the game
float r2; 
float y = 0;
int value = 0;
int num = 50;
int[] x = new int[num];
int[] y3 = new int[num];
float xpos, ypos;       
float xspeed = 1.8;  
float yspeed = 1.2;
float Y = 60;
float Y2 = 270;
String[] words;
boolean hasPopped=false;








 

       
 

 



void setup() {
  size(1940, 1010);
  fullScreen();

  place=0;
  fill(0,255,0);
  surf= loadImage("surf.png");
  glass= loadImage("glass.png");
  found = loadImage("found.gif");
  Man= loadImage("Man.png");
  beach = loadImage("beach.jpg");
  sun = loadImage("sun.png");
  where = loadImage("where.png");
  Music = loadImage("Music.png");
  winter = loadImage("winter.png");
  tik = loadImage("tik.png");
  balloonPop = loadImage("processingballoon2.png");
  camp= loadImage("camp.png");
  space= loadImage("space.png");
  purple= loadImage("purple.png");
   black= loadImage("black.png");
   santa= loadImage("santa.png");
   Present= loadImage("Present.png");
   Help= loadImage("Help.png");
   beachball= loadImage("beachball.png");
   bee= loadImage("bee.png");
   run= loadImage("run.png");
   hive= loadImage("hive.png");
   night= loadImage("night.png");
   all = loadImage("all.png");
   pig = loadImage("pig.png");
   astro = loadImage("astro.png");
   Jail = loadImage("Jail.png");
   menu = loadImage("menu.png");
  r1 = random(width); 
  r2 = random(height); 
  frameRate(30);
  xpos = width/2;
  ypos = height/2;

  
}

void draw() {

  if (place == 0) {
    where.resize(1940, 1090);
    image(where, 0, 0);
    fill(245, 245, 220);
    rect(1484,890,328,140);
    textSize(128);
    text("Start", 1484, 875); 
    fill(0);
    textSize(48);
    text("(Press Enter)", 1520, 970);  
    textSize(28);
    text("Objective: To locate Laundry Man and send him to jail, look for unusual items in each scene  ", 700, 90);
    text(" and click and hold them with your mouse.", 696, 116);
    fill(245, 245, 220);
    text(" Note: To enter each scene, press the ENTER key.", 960, 166);
    image(glass,mouseX, mouseY, 100, 100);
    
    
  }
    
    if (place == 5) {
    space.resize(1940, 1090);
    image(space, 0, 0);
    image(all,177,Y);
    Y++;
    if (Y > 480) {
    Y = 150;
  }
  textSize(48);
    text("(Hint: UFO)", 1500, 1020);
    image(glass,mouseX, mouseY, 100, 100);
    
if(hasPopped==true)image(pig, 1650, 495);
  else image(pig,1650,495);
  hive.resize(120, 160);}
  if(mouseX > 1650 && mouseX < (1650 + pig.width) && mouseY > 445 && mouseY < (445 + pig.height ))
    image(astro,1309,Y2);
    Y2++;
    if (Y2 > 420) {
    Y2 = 270;
    }
  
  if (place == 4) {
    camp.resize(1940, 1090);
    image(camp, 0, 0);
     fill(0);
     textSize(48);
    text("(Hint: Bzzzz)", 1500, 1020);
    image(glass,mouseX, mouseY, 100, 100);
    xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;
  }
  image(bee,xpos,ypos);
  bee.resize(30, 40);
  
  
  if(hasPopped==true)image(hive, 250, 200);
  else image(hive,250,200);
  hive.resize(120, 160);}
  if(mousePressed) {
  if(mouseX > 250 && mouseX < (250 + hive.width) && mouseY > 200 && mouseY < (200 + hive.height ))
    image(night,1260,340);
  }

  if (place == 1) {
    beach.resize(1940, 1090);
    image(beach, 0, 0);
    image(Man, 486, 707);
    sun.resize(240, 110);
    image(sun, 528, 700);
   surf.resize(650, 650);
   image(surf, xPos, 330);
   fill(0);
   textSize(48);
    text("(Hint: Inflateable)", 1500, 1020);
   xPos=xPos+xDir;
  if (xPos>width-10 || xPos<20)
  {
    xDir=-xDir;
  
    image(glass,mouseX, mouseY, 0, 0);
  

  y = y + 1;

if(hasPopped==true)image(beachball, 70, 900);
    beachball.resize(120, 140);}
    else image(beachball,70,900);
    if(mousePressed) {
    if(mouseX > 70 && mouseX < (70 + beachball.width) && mouseY > 800 && mouseY < (800 + beachball.height ))
    image(run,760,350);
    
  }
  }
 

  if (place == 2) {
    image(Music,0,0); 
    Music.resize(1940, 1090);
    fill(0);
    textSize(48);
    text("(Hint: Click an unusual note)", 1300, 1020);
if(hasPopped==true)image(tik, 686, 307);
else image(purple,r1,r2);
purple.resize(40, 60);}
 if (y > 100) {
    
    y = 100;
    

if(hasPopped==true)image(menu, 1707, -40);
menu.resize(90, 100);}
else image(menu,1707,-40);
if(mousePressed) {
if(mouseX > 1707 && mouseX < (1707 + menu.width) && mouseY > -40 && mouseY < (-40 + menu.height )) 
    place = 0;
}
  
  if (place == 3) {
    winter.resize(1940, 1090);
    image(winter, 0, 0);
    fill(0);
    textSize(48);
    text("(Hint: You get this every christams)", 1200, 1020);
       
    image(glass,mouseX, mouseY, 100, 100);
     
    if(hasPopped==true)image(Present, 977, 1005);
    else image(Present,977,1005);
    Present.resize(40, 60);}
    if(mousePressed) {
    if(mouseX > 977 && mouseX < (977 + Present.width) && mouseY > 1005 && mouseY < (1005 + Present.height )) 
    image(santa,20,0);
    
    
    } 

    
    


  if (place == 6) {
    background(0);
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
  
 
  
  
  
  PImage Jail = loadImage("Jail.png");
  Jail.resize(690, 474);
  image(Jail, -16, 180);
  fill(frameCount/1);//////// Wait 11 seconds for the png to appear!!
  circle(395, 400, 328);
  fill(frameCount/1);//////// Wait 11 seconds for the png to appear!!
  circle(395, 400, 328);
  
  
  textSize(89);
  fill(0,100,0);
  text("Thanks", 1257, 285, -120);  // Specify a z-axis value
  text("for Playing!!!", 1165, 370);  // Default depth, no z-value specified
  textSize(49);
  fill(255,140,0);
  text("Justice Ndukwu", 1230, 440, -790);
  
  for (int i = num-1; i > 0; i--) {
    x[i] = x[i-1];
    y3[i] = y3[i-1];
  }
  
  x[0] = mouseX;
  y3[0] = mouseY;
  // Draw the circles
  for (int i = 0; i < num; i++) {
    rect(x[i], y3[i], i/7.0, i/1.0,4.9); //// move your mouse around and you will see long skinny rectangles. credit: proccesing refrence
  }
  
   
}



  }


 void mousePressed(){
  println(mouseX,mouseY);
  if (mouseX > r1  && mouseX < (r1 + tik.width) && mouseY > r2 && mouseY < (r2 + tik.height )) {
  


{hasPopped=true;

}

  

     
   
  
 }
 
 }
 





void keyPressed() {

  if ( key == ENTER) {
    if (place==0) {
      place=2;
    } else if (place == 2) {
      place=3;
    } else if (place == 3) {
      place=1;
    } else if (place == 1) {
      place=4;
    } else if (place == 4) {
      place=5;
    } else if (place == 5) {
      place=6;
   
}
}
}
