class Asteroid extends Floater{
   private double rotSpeed; //randomly + or -
   public Asteroid(){ 
     corners = 6;
     xCorners = new int[] {-10, 5, 13, 17, -4, -14};
     yCorners = new int[] {-1, 15, 5, -7, -14, -5};
     myCenterX = (int)(Math.random()* 300)+50;
     myCenterY = (int)(Math.random()* 300)+50;
     myPointDirection = (int)(Math.random()* 200)+50;
     myXspeed = (int)(Math.random()*3)+1;
     myYspeed = (int)(Math.random()*3)+1;
     rotSpeed = (double)(Math.random()*5)-2;
     myColor = color(255);
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
