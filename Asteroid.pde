class Asteroid extends Floater{
  private double rotSpeed = (Math.random()*3)-1;
  public Asteroid(){
    corners = 10;
    xCorners = new int[]{-6,-3,3,9,6,6,6,0,-3,-6};
    yCorners = new int[]{-3,-6,-6,-3,0,3,6,3,6,3};
    myCenterX = (int)(Math.random()*501);
    myCenterY = (int)(Math.random()*501);
    myXspeed = (Math.random()*2)-1;
    myYspeed = (Math.random()*2)-1;
  }
  
  void move(){
    turn(rotSpeed);
    super.move();
  }
  
}
