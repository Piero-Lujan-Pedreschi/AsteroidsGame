class Star  {
  private int myX, myY, myS, myColor;
  public Star() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myS = 4;
    myColor = color(#fffa86);
  }
  public void show() {
    fill(myColor);
    ellipse(myX, myY, myS, myS);
  } 
}

