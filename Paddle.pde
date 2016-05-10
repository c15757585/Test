
class Paddle {
  
  void display(float paddleX) {
    fill(255);
    stroke(255,100,100);
    rect(paddleX - paddleWidth + 45, paddleY, 75, 10);
  }
   
  void reset() {
    paddleX = width/2 - paddleWidth/2;
    paddleY = height - 30;
  }
  
}
