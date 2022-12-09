class Asteroid extends Floater{
  private double rotSpeed = (Math.random()*3)-1;
  public Asteroid(){
    corners = 10;
    xCorners = new int[]{-9,-6,6,12,9,9,9,3,-6,-9};
    yCorners = new int[]{-6,-9,-9,-6,3,6,9,6,9,6};
    myCenterX = (int)(Math.random()*501);
    myCenterY = (int)(Math.random()*501);
    myXspeed = (Math.random()*2)-1;
    myYspeed = (Math.random()*2)-1;
  }
  void move(){
    turn(rotSpeed);
    super.move();
  }
  
 public double getX(){ return myCenterX;}
 public double getY(){ return myCenterY;}
}
