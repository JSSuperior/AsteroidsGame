//your variable declarations here
boolean left = false;
boolean right = false;
boolean sped = false;


Spaceship gitus;
Star[] thousandPeaks = new Star[200];

public void setup() 
{
  size(500,500);
  for(int k = 0; k < thousandPeaks.length; k++)
    thousandPeaks[k] = new Star();
  gitus = new Spaceship();
}
public void draw() 
{
  background(0);
  for(int k = 0; k < thousandPeaks.length; k++)
    thousandPeaks[k].show();
  
  if(left == true)
    gitus.turn(-3);
  if(right == true)
    gitus.turn(3);
  if(sped == true)
    gitus.accelerate(0.05);
  
  
  gitus.move();
  gitus.show();
}

public void keyPressed(){
  if(key == 's' || key == 'S')
    left = true;
  if(key == 'f' || key == 'F')
    right = true;
  if(key == 'j' || key == 'J')
    sped = true;
}

public void keyReleased(){
  if(key == 's' || key == 'S')
    left = false;
  if(key == 'f' || key == 'F')
    right = false;
  if(key == 'j' || key == 'J')
    sped = false;
}
