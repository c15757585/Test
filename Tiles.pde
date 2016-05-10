
class Brick { 
  int x, y, c;

  Brick( int xo, int yo, int col) {
    x = xo;
    y = yo;
    c = col;
  }


  void display() {
    fill(c*255);
    stroke(0,255,100);
    rect(x, y, 10, 10);
  }

  boolean isWhite() {
    if(c == 1) {
      return true;
    }
    else { 
      return false;
    }
  }

  void changeColor() { c = 0;}
  
  int up() { return y; }
  int right() { return x; }  
  int down() { return y+ 10; }
  int left () { return x +10; }
}


