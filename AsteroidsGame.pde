//your variable declarations here
boolean left = false;
boolean right = false;
boolean sped = false;

Spaceship Runar;
Star[] Exarch = new Star[200];
ArrayList <Asteroid> Elidibus = new ArrayList <Asteroid>();
ArrayList <Bullet> pewpew = new ArrayList <Bullet>();

public void setup() 
{
  size(500, 500);
  for (int k = 0; k < Exarch.length; k++)
    Exarch[k] = new Star();
  for (int k = 0; k < 10; k++)
    Elidibus.add(new Asteroid());
  Runar = new Spaceship();
}
public void draw() 
{
  for (int k = 0; k < pewpew.size(); k++) {
    for (int i = 0; i < Elidibus.size(); i++) {
      double d = dist((float)pewpew.get(k).getX(), (float)pewpew.get(k).getY(), (float)Elidibus.get(i).getX(), (float)Elidibus.get(i).getY());
      if (d<20) {
        Elidibus.remove(i);
        pewpew.remove(k);
        break;
      }
    }
  }

  //background(0);
  noStroke();
  fill(0, 75);
  rect(0, 0, width, height);
  for (int k = 0; k < Exarch.length; k++)
    Exarch[k].show();
  for (int k = 0; k < Elidibus.size(); k++) {
    Elidibus.get(k).show();
    Elidibus.get(k).move();
    double d = dist((float)Runar.getX(), (float)Runar.getY(), (float)Elidibus.get(k).getX(), (float)Elidibus.get(k).getY());
    if (d<20)
      Elidibus.remove(k);
  }
  for (int k = 0; k < pewpew.size(); k++) {
    pewpew.get(k).show();
    pewpew.get(k).move();
  }

  if (left == true)
    Runar.turn(-3);
  if (right == true)
    Runar.turn(3);
  if (sped == true)
    Runar.accelerate(0.05);

  Runar.move();
  Runar.show();
}

public void keyPressed() {
  if (key == 's' || key == 'S')
    left = true;
  if (key == 'd' || key == 'D')
    right = true;
  if (key == 'j' || key == 'J')
    sped = true;
  if (key == 'k' || key == 'K')
    if (pewpew.size() < 4)
      pewpew.add(new Bullet(Runar));
  if (key == ' ')
    Runar.hyperspace();
}

public void keyReleased() {
  if (key == 's' || key == 'S')
    left = false;
  if (key == 'd' || key == 'D')
    right = false;
  if (key == 'j' || key == 'J')
    sped = false;
}
