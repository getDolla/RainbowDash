/*
a bouncing ball
*/
 
float ballX = 100;
float ballY = 0;
float h = 25;
 
//create a variable for speed
float speedY = 5;
float speedX = 2;
 
void setup() {
  size(500,500);
  smooth();
  noStroke();
   
  // change the mode we draw circles so they are
  // aligned in the top left
  ellipseMode(CORNER);
 
}
 
void draw() {
  //clear the background and set the fill colour
  background(0);
  fill(225);
   
  //draw the circle in it's current position
  ellipse(ballX, ballY, h,h);
   
  //add speed to the ball's
  ballY = ballY + speedY;
  ballX = ballX + speedX;
   
   
  if (ballY > height - h) {
    // set the position to be on the floor
    ballY = height - h;
    // and make the y speed in the opposite direction
    speedY = -speedY;
  }
  if (ballY <= 0) {
    // if the ball hits the top,
    // make it bounce off
    speedY = -speedY;
  }
 
  if(ballX > width - h) {
    ballX = width - h;
    // and make the x speed in the opposite direction
    speedX = -speedX;
  }
   
  if (ballX <= 0) {
    // if the ball hits the top,
    // make it bounce off
    speedX = -speedX;
  }
}