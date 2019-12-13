//your variable declarations here
Spaceship bobby;
Star [] stars = new Star [1000];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> jenny = new ArrayList <Bullet>();
int score = 0;
public void setup() 
{
  size(500,500);
  bobby = new Spaceship();
  for (int i=0;i<stars.length;i++) {
  	stars[i] = new Star();
  }
  for (int i=0;i<5;i++) {
  	asteroids.add(new Asteroid());
  }
  
}
public void draw() 
{
  background(0);
  for (int i=0;i<stars.length;i++) {
  	stars[i].show();
  }
  for (int i=0;i<asteroids.size();i++) {
  	asteroids.get(i).show();
  	asteroids.get(i).move();
  }
  for (int i=0;i<jenny.size();i++) {
  	jenny.get(i).show();
  	jenny.get(i).move();
  }
  bobby.show();
  bobby.move();
  if (jenny.size()>0) {
     for (int i=jenny.size()-1; i>=0; i--) {
     	for (int j=asteroids.size()-1; j>=0; j--) {
     		if (jenny.get(i).getMyCenterX()-asteroids.get(j).getMyCenterX()<=20) {
           if (jenny.get(i).getMyCenterX()-asteroids.get(j).getMyCenterX()>=-20) {
             if (jenny.get(i).getMyCenterY()-asteroids.get(j).getMyCenterY()>=-20) {
               if (jenny.get(i).getMyCenterY()-asteroids.get(j).getMyCenterY()<=20) {
                 jenny.remove(i);
                  i--;
                 asteroids.remove(j);
                 j--;
                 break;
               }
             }
           }
         }
     	 }
     }
  }

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
	if (key=='q') {
		jenny.add(new Bullet(bobby));
	}
  if (key=='j') {
    for (int i=0; i<5; i++)
      asteroids.add(new Asteroid());

  }
}
