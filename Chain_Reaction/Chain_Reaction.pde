boolean isReaction = false;

class Ball {

  float ballX;
  float ballY;

  float h;
  int rlooks;
  int glooks;
  int blooks;
  
  //create a variable for speed
  float speedY;
  float speedX; 

  Ball() {
    ballX = (float) (Math.random() * 500);
    ballY = (float) (Math.random() * 500);
    
    h = (float) (Math.random() * 20)+ 4;
    rlooks = (int) (Math.random() * 220);
    glooks = (int) (Math.random() * 220);
    blooks = (int) (Math.random() * 220);
    
    speedY = (float) (Math.random() * 6) + 2;
    speedX = (float) (Math.random() * 6) + 2;
  }
  
  void move() {
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
  
  void plode() {
    if (isReaction) {}
  
  
  }
}

void setup() {
  size(500,500);
  background(0);
  smooth();
  noStroke();
  
  Ball[] balls = new Ball[(int) (Math.random() * 10) + 5];
  for( int i = 0; i < balls.length; i++) { 
     balls[i] = new Ball();
     fill(balls[i].rlooks,balls[i].glooks,balls[i].blooks);
     ellipse(balls[i].ballX, balls[i].ballY, balls[i].h,balls[i].h);
  }
}