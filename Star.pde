class Star  {
  private int myX, myY, myS, myO;
  public Star() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myS = 4;
    myO = 50;
  }
  public void show() {
    fill(255, 255, 255, myO);
    ellipse(myX, myY, myS, myS);
  } 
}

