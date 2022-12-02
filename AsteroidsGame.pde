//your variable declarations here
boolean left = false;
boolean right = false;
boolean sped = false;

Spaceship Runar;
Star[] Exarch = new Star[200];
ArrayList <Asteroid> Elidibus = new ArrayList <Asteroid>();

public void setup() 
{
  size(500,500);
  for(int k = 0; k < Exarch.length; k++)
    Exarch[k] = new Star();
  for(int k = 0; k < 10; k++)
    Elidibus.add(new Asteroid());
  Runar = new Spaceship();
  
}
public void draw() 
{
  //background(0);
  noStroke();
  fill(0,75);
  rect(0,0,width,height);
  for(int k = 0; k < Exarch.length; k++)
    Exarch[k].show();
  for(int k = 0; k < Elidibus.size(); k++){
    Elidibus.get(k).show();
    Elidibus.get(k).move();
    double d = dist((float)Runar.getX(),(float)Runar.getY(),(float)Elidibus.get(k).getX(),(float)Elidibus.get(k).getY());
    if(d<20)
      Elidibus.remove(k);
  }
  
  if(left == true)
    Runar.turn(-3);
  if(right == true)
    Runar.turn(3);
  if(sped == true)
    Runar.accelerate(0.05);
  
  
  Runar.move();
  Runar.show();
  
}

public void keyPressed(){
  if(key == 's' || key == 'S')
    left = true;
  if(key == 'd' || key == 'D')
    right = true;
  if(key == 'j' || key == 'J')
    sped = true;
  if(key == ' ')
    Runar.hyperspace();
}

public void keyReleased(){
  if(key == 's' || key == 'S')
    left = false;
  if(key == 'd' || key == 'D')
    right = false;
  if(key == 'j' || key == 'J')
    sped = false;
}
