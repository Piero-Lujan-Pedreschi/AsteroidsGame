class Bullet extends Floater {
  Bullet(Spaceship iss) {
    myCenterX = iss.getX();
    myCenterY = iss.getY();
    myXspeed = iss.getXSpeed();
    myYspeed = iss.getYSpeed();
    myPointDirection = iss.getDirection();
  }
  public double getX() {
     return myCenterX;
  }
   public double getY() {
     return myCenterY;
   }
  public void show() {
    fill(255, 255, 255);
    noStroke();
    ellipse((float)myCenterX, (float)myCenterY, 8, 8);
    super.show();
  }
  public void move() {
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
}
