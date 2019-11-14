class Spaceship extends Floater  
{   
    Spaceship() {
    	corners = 3;
		xCorners = new int[corners];
		yCorners = new int[corners];
		xCorners[0] = -8;
		yCorners[0] = -8;
		xCorners[1] = 16;
		yCorners[1] = 0;
		xCorners[2] = -8;
		yCorners[2] = 8;
		myColor = color(255,0,0);
		myCenterX = 250;
		myCenterY = 250;
		myDirectionX = 0;
		myDirectionY = 0;
		myPointDirection = 0;
    }
    public Double getMyDirectionX() {
    	return myDirectionX;
    }
    public Double getMyDirectionY() {
    	return myDirectionY;
    }
    public Double getMyPointDirection() {
    	return myPointDirection;
    }
    public void setMyDirectionX(double x) {
    	myDirectionX = x;
    }
    public void setMyDirectionY(double y) {
    	myDirectionY = y;
    }
    public void setMyPointDirection(double z) {
    	myPointDirection = z;
    }
 }
