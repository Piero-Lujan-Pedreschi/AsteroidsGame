class Star  {
  private int myX, myY, myS;
  public Star() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myS = 4;
  }
  public void show() {
    fill(255,250,134);
    ellipse(myX, myY, myS, myS);
  } 
}
