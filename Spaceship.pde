class Spaceship extends Floater  {   
  public Spaceship() {
    corners = 5;
    xCorners = new int[] {-10, 0, 10, 0, -10};
    yCorners = new int[] {10, 2, 0, -2, -10};
    myColor = color(255);
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
  }
}

class Asteroid extends Floater{
   private double rotSpeed; //randomly + or -
   public Asteroid(){ 
     corners = 6;
     xCorners = new int[] {-10, 2, 10, 9, -1, -8};
     yCorners = new int[] {5, 7, 2, -6, -7, -2};
     myCenterX = (int)(Math.random()* 300)+50;
     myCenterY = (int)(Math.random()* 300)+50;
     myPointDirection = (int)(Math.random()* 200)+50;
     myXspeed = (int)(Math.random()*5)+1;
     myYspeed = (int)(Math.random()*5)+1;
     rotSpeed = (double)(Math.random()*5)-2;
   }
 
   public double getX() {
     return myCenterX;
   }

   public double getY() {
     return myCenterY;
   }
   public void move(){ 
     turn(rotSpeed);     
     super.move();
   }
}
