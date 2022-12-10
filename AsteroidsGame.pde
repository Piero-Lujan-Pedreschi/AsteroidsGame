Star [] stars = new Star [100];
Spaceship iss = new Spaceship();
ArrayList <Asteroid> rocks = new ArrayList <Asteroid>();
ArrayList <Bullet> shot = new ArrayList <Bullet>();
//boolean wIsPressed = false;
//boolean dIsPressed = false;

public void setup() {
  size(500, 500);
  for(int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
  for(int j = 0; j < 8; j++) {
    rocks.add(new Asteroid());
  }
}
public void draw() {
  background(0);
  for(int i = 0; i < stars.length; i++) {
    stars[i].show();
  }
  for(int j = 0; j < rocks.size(); j++) {
    rocks.get(j).move();
    rocks.get(j).show();
    float d = dist((float)iss.getX(), (float)iss.getY(), (float)rocks.get(j).getX(), (float)rocks.get(j).getY());
    if(d < 10)
      rocks.remove(j);
  }
  for(int k =0; k < shot.size(); k++) {
    shot.get(k).show();
    shot.get(k).move();
    shot.get(k).accelerate(6);
    for(int l = 0; l < shot.size(); l++) {
      float d = dist((float)shot.get(l).getX(), (float)shot.get(l).getY(), (float)rocks.get(l).getX(), (float)rocks.get(l).getY());
    if(d < 10)
      rocks.remove(l);
      shot.remove(l);
    }
  }
  
  iss.show();
  iss.move();
  //if(wIsPressed == true) {
    //iss.accelerate(.03);
    //iss.turn(0);
    //iss.move();
  //}
//}
public void keyPressed() { 
  if(key =='w') {
    iss.accelerate(.03);
    iss.turn(0);
    iss.move();
  }
  if(key =='c') {
    iss.setSpeed(0);
    iss.move();
    iss.Hyperspace((double)(Math.random()*450)+25, (double)(Math.random()*450)+25);
  }
  if(key =='d') {
    iss.turn(5);
  }
  if(key =='a') {
    iss.turn(-5);
  }
  if(key =='s') {
    iss.move();
    iss.accelerate(-.03);
    iss.setDirection(iss.getDirection());
  }
  if(key == 'q') {
    shot.add(new Bullet(iss));
  }
  //if(key == 'w') {
    //wIsPressed = true;
  //} else if (key == 'd') {
    //dIsPressed = true;
  //}
}

//void keyReleased() {
  //if(key == 'w') {
    //wIsPressed = false;
  //} else if (key == 'd') {
    //dIsPressed = false;
  //}
//}
