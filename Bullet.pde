class Bullet extends Floater
{
	public Bullet(Spaceship theShip) {
		myCenterX = theShip.getMyCenterX();
		myCenterY = theShip.getMyCenterY();
		myDirectionX = theShip.getMyDirectionX();
		myDirectionY = theShip.getMyDirectionY();
		myPointDirection = theShip.getMyPointDirection();
		accelerate(6);
	}

	public void move ()   //move the floater in the current direction of travel
  {      
    //change the x and y coordinates by myDirectionX and myDirectionY       
    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     
  }

	public void show() {
		fill(255);
		ellipse((float)myCenterX,(float)myCenterY,10,10);
	}
}