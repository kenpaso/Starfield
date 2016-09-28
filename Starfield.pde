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
class NormalParticle
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
		angle = 20;
		speed = (Math.random()*7);
		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	}
	void move()
	{
		myX = myX + ((int)(Math.random()*7)-3);
		myY = myY + ((int)(Math.random()*7)-3);
	}
	void show()
	{
		fill(myColor);
		rect((float)myX,(float)myY,6,6);

	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

