Star [] stars = new Star [100];
Spaceship iss = new Spaceship();
boolean wIsPressed = false;
boolean dIsPressed = false;

public void setup() {
  size(500, 500);
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}
public void draw() {
  background(0);
  for(int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  iss.show();
  if(wIsPressed == true) {
    iss.accelerate(.1);
    iss.turn(0);
    iss.move();
  }
}
public void keyPressed() {
  if(key =='c') {
    iss.setSpeed(0);
    iss.move();
    iss.Hyperspace((double)(Math.random()*500));
  }
  if(key =='d') {
    iss.turn(5);
  }
  if(key =='a') {
    iss.turn(-5);
  }
  if(key =='s') {
    iss.setSpeed(0);
    iss.accelerate(-15);
    iss.setDirection(iss.getDirection());
  }
  if(key == 'w') {
    wIsPressed = true;
  } else if (key == 'd') {
    dIsPressed = true;
  }
}

void keyReleased() {
  if(key == 'w') {
    wIsPressed = false;
  } else if (key == 'd') {
    dIsPressed = false;
  }
}

