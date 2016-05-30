Ball[] balls;

boolean reactionStarted;


void setup() {
  size(600, 600);
  smooth();
  noStroke();
  reactionStarted = false;
  balls = new Ball[25];
  for (int i=0; i < balls.length; i++ )
    balls[i] = new Ball();
  balls[0].state = Ball.DEAD;
}


void draw() {
  background(0);

  if (reactionStarted) {
    for (int i=balls.length-1; i >= 0; i-- ) {
      for (int a = 0; a < balls.length; a++) {
        if ( (i != a) && (balls[i].state == Ball.GROWING) && (balls[a].state != Ball.GROWING) && balls[i].isTouching(balls[a]))
          balls[a].state = Ball.GROWING;
      }
    }
  }

  for (int i=0; i < balls.length; i++ ) {
    balls[i].draw(i);
    balls[i].process();
  }
}


void mouseClicked() {
  if ( !reactionStarted ) {
    balls[0].x = mouseX;
    balls[0].y = mouseY;
    balls[0].rad = 0.1;
    balls[0].state = Ball.GROWING;
    reactionStarted = true;
  }
}