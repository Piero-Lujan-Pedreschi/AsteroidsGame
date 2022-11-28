class Spaceship extends Floater  {   
  public Spaceship() {
    corners = 5;
    xCorners = new int[] {-5, 0, 5, 0, -5};
    yCorners = new int[] {5, 1, 0, -1, -5};
    myColor = color(255);
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
  }
  public void setSpeed(double x) {
    myXspeed = myYspeed = x;
  }
  public double getSpeed() {
    return myXspeed;
  }
  public double getDirection() {
    return myPointDirection;
  }
  public void setDirection(double d) {
    myPointDirection = d;
  }
  public void Hyperspace(double h) {
    myCenterX = myCenterY = h;
  }
}
