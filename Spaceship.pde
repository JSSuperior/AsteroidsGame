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
}
