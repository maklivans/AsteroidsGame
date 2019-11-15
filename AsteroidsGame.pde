//your variable declarations here
Spaceship bobby;
Star [] stars = new Star [1000];
public void setup() 
{
  size(500,500);
  bobby = new Spaceship();
  for (int i=0;i<stars.length;i++) {
  	stars[i] = new Star();
  }
}
public void draw() 
{
  background(0);
  for (int i=0;i<stars.length;i++) {
  	stars[i].show();
  }
  bobby.show();
  bobby.move();
  
}
public void keyPressed() {
	if (key=='w') {
		bobby.accelerate(0.5);
	}
	if (key=='s') {
		bobby.accelerate(-0.5);
	}
	if (key=='a') {
		bobby.turn(-6);
	}
	if (key=='d') {
		bobby.turn(6);
	}
	if (key=='h') {
		bobby.hypserspaceeee();
	}
}
