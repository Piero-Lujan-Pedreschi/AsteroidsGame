const MAX_ASTEROIDS = 8;
const NUM_STARS = 100;
const TURNING_DEGREES = 5;

Star[] stars = new Star[NUM_STARS];
Spaceship ship = new Spaceship();
ArrayList<Asteroid> asteroids = new ArrayList<Asteroid>();
ArrayList<Bullet> bullets = new ArrayList<Bullet>();

public void setup() {
  size(500, 500);
  for (int star_idx = 0; star_idx < NUM_STARS; star_idx++) {
    stars[star_idx] = new Star();
  }
  for (int asteroid_idx = 0; asteroid_idx < MAX_ASTEROIDS; asteroid_idx++) {
    asteroids.add(new Asteroid());
  }
}

public void showStars() {
  for (int star_idx = 0; star_idx < NUM_STARS; star_idx++) {
    stars[star_idx].show();
  }
}

public void showAsteroids() {
  for (int asteroid_idx = 0; asteroid_idx < asteroids.size(); asteroid_idx++) {
    asteroids.get(asteroid_idx).move();
    asteroids.get(asteroid_idx).show();
    float distanceFromShipToAsteroid = dist((float)ship.getX(), (float)ship.getY(), (float)asteroids.get(asteroid_idx).getX(), (float)asteroids.get(asteroid_idx).getY());
    if (distanceFromShipToAsteroid < 10) {
      asteroids.remove(asteroid_idx);
      asteroid_idx--;
    }
  }
}

public void showBullets() {
  for (int bullet_idx = 0; bullet_idx < bullets.size(); bullet_idx++) {
    bullets.get(bullet_idx).show();
    bullets.get(bullet_idx).move();
    bullets.get(bullet_idx).accelerate(6);
    
    for (int asteroid_idx = 0; asteroid_idx < asteroids.size(); asteroid_idx++) {
      float distanceFromBulletToAsteroid = dist((float)bullets.get(bullet_idx).getX(), (float)bullets.get(bullet_idx).getY(), (float)asteroids.get(asteroid_idx).getX(), (float)asteroids.get(asteroid_idx).getY());
    }
    
    if (distanceFromBulletToAsteroid < 10) {
      bullets.remove(bullet_idx);
      asteroids.remove(asteroid_idx);
      bullet_idx--;
      asteroid_idx--;
    }
  }
}

public void draw() {
  background(0);
  showStars();
  showAsteroids();
  showBullets();
  ship.show();
  ship.move();
}

public void keyPressed() {
  if (key == 'w') {
    ship.move();
    ship.accelerate(.03);
  }
  
  if (key == 's') {
    ship.move();
    ship.accelerate(-.03);
  }
  
  if (key == 'd') {
    ship.turn(TURNING_DEGREES);
  }
  
  if (key == 'a') {
    ship.turn(-1 * TURNING_DEGREES);
  }
  
  if (key =='c') {
    ship.setSpeed(0);
    ship.Hyperspace((double)(Math.random()*450)+25, (double)(Math.random()*450)+25);
  }
  
  if (key == 'q') {
    bullets.add(new Bullet(ship));
  }
}
