class Bullet extends Floater{
  public Bullet(Spaceship Runar){
    myCenterX = Runar.getX();
    myCenterY = Runar.getY();
    myPointDirection = Runar.getPointDirection();
    accelerate(3);
  }
  public void show(){
    ellipse((float)myCenterX,(float)myCenterY,2,2);
  }
 public double getX(){ return myCenterX;}
 public double getY(){ return myCenterY;}
}
