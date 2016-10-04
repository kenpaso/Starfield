NormalParticle star;
NormalParticle [] billion;
void setup()
{
	size(1000,1000);
	star = new NormalParticle();
 	billion = new NormalParticle[1000];
 	for(int i = 0; i < billion.length; i++)
 	{
 		billion[i] = new NormalParticle();
 		billion[0] = new OddballParticle();
 	}   
}
void draw()
{
	background(0);
	star.move();
 	star.show();
 	for(int i = 0; i <billion.length;i++)
 	{
 		billion[i].move();
 		billion[i].show();
 	}
}
class NormalParticle implements Particle
{
	double myX;
	double myY;
	double angle;
	double speed;
	int myColor;

	NormalParticle()
	{
		myX = (Math.random()*1000);
		myY = (Math.random()*1000);
		angle = ((Math.random()*2)-1)*(Math.PI);
		speed = (Math.random()*7);
		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	}
	public void move()
	{
		myX = myX + (Math.cos((int)(angle)));
		myY = myY + (Math.sin((int)(angle)));
	}
	public void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,6,6);

	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle
{
	double myX;
	double myY;
	double angle;
	double speed;
	int myColor;

	OddballParticle()
	{
		myX = (Math.random()*1000);
		myY = (Math.random()*1000);
		angle = ((Math.random()*2)-1)*(Math.PI);
		speed = (Math.random()*7);
		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	}
	public void move()
	{
		myX = myX + (Math.sin((int)(angle)));
		myY = myY + (Math.cos((int)(angle)));
	}
	public void show()
	{
		fill(255);
		rect((float)myX,(float)myY,12,12);	
	}	
}
class JumboParticle //uses inheritance
{
	//your code here
}

