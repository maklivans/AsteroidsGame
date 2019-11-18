class Asteroid extends Floater
{
	private int rotSpeed;

	public Asteroid() {
		corners = 4;
		xCorners = new int [corners];
		yCorners = new int [corners];
		for (int i=0; i<(corners/2); i++) {
			x[i] = (int)(Math.random()*10);
			y[i] = (int)(Math.random()*10);
		}
		for (int i=(corners/2); i<corners; i++) {
			x[i] = (int)(Math.random()*(-10));
			y[i] = (int)(Math.random()*(-10));
		}
		

	}
	public move() {
		turn(rotSpeed);
   		super.move();

	}
}