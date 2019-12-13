class Asteroid extends Floater
{
	private int rotSpeed;

	public Asteroid() {
		corners = 4;
		xCorners = new int [corners];
		yCorners = new int [corners];
		myDirectionX = Math.random()*2-1;
		myDirectionY = Math.random()*2-1;
		rotSpeed = (int)(Math.random()*6-3);
		for (int i=0; i<(corners/2); i++) {
			xCorners[i] = (int)(Math.random()*40);
			yCorners[i] = (int)(Math.random()*40);
		}
		for (int i=(corners/2); i<corners; i++) {
			xCorners[i] = (int)(Math.random()*(-40));
			yCorners[i] = (int)(Math.random()*(-40));
		}
		myColor = color(150);

	}


	public void move() {
		turn(rotSpeed);
   		super.move();

	}
}