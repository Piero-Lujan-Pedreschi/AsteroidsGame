class Bullet extends Floater {
  Bullet(Spaceship ship) {
    x_pos = ship.getX();
    y_pos = ship.getY();
    x_speed = ship.getXSpeed();
    y_speed = ship.getYSpeed();
    myPointDirection = ship.getDirection();
  }
  
  public double getX() {
     return x_pos;
  }
  
  public double getY() {
    return y_pos;
  }
   
  public void show() {
    fill(255, 255, 255);
    noStroke();
    ellipse((float)x_pos, (float)y_pos, 8, 8);
    super.show();
  }
  
  public void move() {
    x_pos += x_speed;    
    y_pos += y_speed;
  }
}
