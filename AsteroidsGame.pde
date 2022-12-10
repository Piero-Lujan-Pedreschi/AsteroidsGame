Star[] stars = new Star[100];
Spaceship ship = new Spaceship();
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
ArrayList<Bullet> shot = new ArrayList<Bullet>();
boolean wIsPressed = false;
boolean dIsPressed = false;

const MAX_ASTEROIDS = 8;

public void setup() {
  size(500, 500);
  for (int num_stars = 0; num_stars < stars.length; i++) {
    stars[i] = new Star();
  }
  for (int nums_asteroids = 0; num_asteroids < MAX_ASTEROIDS; j++) {
    asteroids.add(new Asteroid());
  }
}
public void draw() {
  background(0);
  for (int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  for (int j = 0; j < asteroids.size(); j++) {
    asteroids.get(j).move();
    asteroids.get(j).show();
    float d = dist((float)ship.getX(), (float)ship.getY(), (float)asteroids.get(j).getX(), (float)asteroids.get(j).getY());
    if (d < 10)
      asteroids.remove(j);
  }
  for (int k =0; k < shot.size(); k++) {
    shot.get(k).show();
    shot.get(k).move();
    shot.get(k).accelerate(6);
    for (int l = 0; l < shot.size(); l++) {
      float d = dist((float)shot.get(l).getX(), (float)shot.get(l).getY(), (float)asteroids.get(l).getX(), (float)asteroids.get(l).getY());
    if (d < 10)
      asteroids.remove(l);
      shot.remove(l);
    }
  }
  
  ship.show();
  ship.move();
  if (wIsPressed == true) {
    ship.accelerate(.03);
    ship.turn(0);
    ship.move();
  }
}
public void keyPressed() { 
  if (key =='c') {
    ship.setSpeed(0);
    ship.move();
    ship.Hyperspace((double)(Math.random()*450)+25, (double)(Math.random()*450)+25);
  }
  if (key =='d') {
    ship.turn(5);
  }
  if (key =='a') {
    ship.turn(-5);
  }
  if (key =='s') {
    ship.move();
    ship.accelerate(-.03);
    ship.setDirection(ship.getDirection());
  }
  if (key == 'q') {
    shot.add(new Bullet(ship));
  }
  if (key == 'w') {
    wIsPressed = true;
  } else if (key == 'd') {
    dIsPressed = true;
  }
}

void keyReleased() {
  if (key == 'w') {
    wIsPressed = false;
  } else if (key == 'd') {
    dIsPressed = false;
  }
}
