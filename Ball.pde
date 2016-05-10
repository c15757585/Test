
class Ball {
  float x, y, v = 4;
  float theta;
  float vx, vy;
  int d = 10;


  void display() {
    fill(255);
    stroke(23,255,100); //matrix theme
    
    //Block the sides 
    if ((x + d/2 > width) || (x - d/2 < 0)) {
      vx = -vx;
    }

    //Block the top 
    if (y - d/2 < 0) {
      vy = -vy;
    }

    //Richochet off paddle
    if ((y >= paddleY) && (x >= mouseX - paddleWidth/2) && (x <= mouseX + paddleWidth/2)) {
      if (x > (mouseX + paddleWidth/2 - 5)) { //reverse vx if ball bounces off edges of paddle
        vx = -vx;
      }
      if ( x < (mouseX - paddleWidth/2 + 5)) {  //reverse vx if ball bounces off edges of paddle
        vx = - vx;
      }
      if ( x < (mouseX - 2.5)) { //left half
        if(x > (mouseX - paddleWidth/4)) { 
          theta = map(x, mouseX - paddleWidth/4, mouseX - paddleWidth/2, PI/2, PI/4);
          vx = v*cos(theta);
          vy = v*sin(theta);
        }
      }
      if (x > (mouseX + 2.5)) { //right half
        theta = map(x, mouseX, mouseX + paddleWidth/2, PI/2, PI/32);
        vx = v*cos(theta);
        vy = v*sin(theta);
      }

      vy = -vy;
    }

    x += vx;
    y += vy;

    ellipse(x, y, d, d);
  }


  void reset() {
    theta = PI/4;
    vx = v*cos(theta);
    vy = -v*sin(theta);
    x = width/2;
    y = height - 35;
  }
  
  float yPos() { return y; } 
  float xPos() { return x; }
  float left() { return x+5; }
  float up() { return y; }
  float right() { return x; }
  float down() { return y+10; }
  
  boolean movingUp() {
    if (vy < 0) {
      return true;
    }
    else {
      return false;
    }
  }
  
  boolean movingLeft() {
    if( vx < 0) {
      return true;
    }
    else {
      return false;
    }
  }
  
  
  void changeX() {
    vx = -vx;
  }
  
  void changeY() {
    vy = -vy;
  }
  
  
}


