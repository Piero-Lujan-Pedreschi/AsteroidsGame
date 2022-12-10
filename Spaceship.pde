class Spaceship extends Floater  {   
  public Spaceship() {
    corners = 5;
    xCorners = new int[] {-10, 0, 10, 0, -10};
    yCorners = new int[] {10, 2, 0, -2, -10};
    myColor = color(107, 120, 180);
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
  }
  
  public void setX(double x) {
    myCenterX = x;
  }
  
  public double getX() {
    return myCenterX;
  }
  
  public void setY(double y) {
    myCenterY = y;
  }
  
  public double getY() {
    return myCenterY;
  }
  
  public double getDirection() {
    return myPointDirection;
  }
  
  public void setDirection(double d) {
    myPointDirection = d;
  }
  
  public void Hyperspace() {
    myCenterX = (double)(Math.random()*450)+25;
    myCenterY = (double)(Math.random()*450)+25;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = (double)(Math.random()*360);
  }
}

