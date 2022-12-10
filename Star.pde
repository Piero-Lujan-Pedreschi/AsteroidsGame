class Star  {
  private int x_pos, y_pos, speed;
  
  public Star() {
    x_pos = (int)(Math.random()*500);
    y_pos = (int)(Math.random()*500);
    speed = 4;
  }
  
  public void show() {
    fill(255,250,134);
    ellipse(x_pos, y_pos, speed, speed);
  } 
}
