// Saylor Dickey | April 17, 2023 | Etch-A-Sketch

int x, y;
PImage pic;

void setup() {
  //size(displayWidth,displayHeight);dd
  size(800, 650);
  x = 20;
  y = 20;
  pic = loadImage("Etch.png");
}

void draw() {
  image(pic,0,0);
  //background(255);
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      moveUp(1);
    } else if (key == 's' || key == 'S') {
      moveDown(1);
    } else if (key == 'a' || key == 'A') {
      moveLeft(1);
    } else if (key == 'd' || key == 'D') {
      moveRight(1);
    }
    strokeWeight(int(random(1,1)));
  }
}

void mousePressed() { // Used for saving the image
}

void keyPressed() { // Used for drawing lines
}

void moveRight(int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x+i, y);
  }
  x = x + rep;
}

void moveLeft(int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x-i, y);
  }
  x = x - rep;
}
  void moveUp(int rep) {
    for (int i=0; i<rep; i=i+1) {
      point(x, y-i);
    }
    y = y - rep;
}
void moveDown(int rep) {
  for (int i=0; i<rep; i=i+1) {
    point(x, y+i);
  }
  y = y + rep;
}
