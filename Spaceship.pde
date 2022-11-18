class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 4;
    xCorners = new int[]{-8,16,-8,-4};
    yCorners = new int[]{-8,0,8,0};
    myColor = 255;
    myCenterX = width/2;
    myCenterY = height/2;
  }
  public void hyperspace(){
    myXspeed = 0;
    myYspeed = 0;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500);
    myPointDirection = (int)(Math.random()*361);
  }
  
}
