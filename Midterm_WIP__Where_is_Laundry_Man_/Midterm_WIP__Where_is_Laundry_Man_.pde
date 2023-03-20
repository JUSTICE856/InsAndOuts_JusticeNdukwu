//Fun Laundry by Justice Ndukwu
//In this theme i'm exploring the diffrent ways that laundry machines can be fun and interactive for users.
////I've looked over the conditonal statement code from CatchBarnaby and took some inspriration from their and started to modfy my code becuase i have something similar in mind when it comes to making my game. credit - Catch Barnaby : by Emily 



PImage found;
PImage hair;
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
int place;

void setup() {
  size(1940, 1010);
  background(255);
  noCursor();
  place=0;
  glass= loadImage("glass.png");
  found = loadImage("found.gif");
  Man= loadImage("Man.png");
  beach = loadImage("beach.jpg");
  sun = loadImage("sun.png");
  where = loadImage("where.png");
  Music = loadImage("Music.png");
  winter = loadImage("winter.png");
  hair = loadImage("hair.png");
  camp= loadImage("camp.png");
  space= loadImage("space.png");

  
}

void draw() {

  if (place == 0) {
    where.resize(1940, 1010);
    image(where, 0, 0);
    image(glass,mouseX, mouseY, 100, 100);
  }
     
   if (place == 5) {
    space.resize(1940, 1010);
    image(space, 0, 0);
    image(glass,mouseX, mouseY, 100, 100);
 
  }
  if (place == 4) {
    camp.resize(1940, 1010);
    image(camp, 0, 0);
    image(glass,mouseX, mouseY, 100, 100);
 
  }

  if (place == 2) {
    beach.resize(1940, 1010);
    image(beach, 0, 0);
    image(Man, 486, 707);
    sun.resize(240, 110);
    image(sun, 528, 700);
    image(glass,mouseX, mouseY, 100, 100);
  }

  if (place == 3) {
    Music.resize(1940, 1010);
    image(Music, 0, 0);
    image(glass,mouseX, mouseY, 100, 100);
  }

  if (place == 3){
  
     hair.resize(80, 10);
     image(hair,1750,30); 
     image(glass,mouseX, mouseY, 100, 100);
  
}

  if (place == 1) {
    winter.resize(1940, 1010);
    image(winter, 0, 0);
    image(glass,mouseX, mouseY, 100, 100);

    
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
   
}
}
}
