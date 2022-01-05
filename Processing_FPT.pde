// using the following variables for collision as well as drawing
int boxX = 50;  // x value of the box
int boxY = 400;  // y value of the box
int boxWidth = 50;  // width of the box
int boxHeight = 50;  // height of the box

void setup() {
  size(500, 500);
  background(random(255), random(255), random(255));
}

void draw() {
  // drawing the box everytime
  fill (109,180,250);
  rect(boxX, boxY, boxWidth, boxHeight);
}

void mousePressed() {
  println("Mouse button pressed:" + mouseButton); 
 if (mouseButton == LEFT) { //Only change background on a left click
    background(random(200), random(200), random (200));
    if (mouseX > boxX && mouseX < boxX + boxWidth && boxY <= boxHeight) {
      println("Stopping the Loop!");
      noLoop(); // stops the draw command from happening
    }
  
  if (mouseButton == RIGHT) {
    loop();
  }
}
}
