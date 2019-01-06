Particle [] billion;
void setup()
{
	size(500,500);
 	billion = new Particle[1200];
 	for(int i = 0; i < billion.length; i++)
 	{
 		billion[i] = new NormalParticle();
 	}   
 		billion[0] = new OddballParticle();
 		billion[1] = new JumboParticle();
}
void draw()
{
	background(0);
 	for(int i = 0; i <billion.length;i++)
 	{
 		billion[i].move();	
 		billion[i].show();
 	}	
 	
}
void mousePressed()
{
	for(int i = 0; i <billion.length;i++)
 	{
 		billion[i] = new NormalParticle();
 		billion[0] = new OddballParticle();
 		billion[1] = new JumboParticle();
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
		myX = 250;
		myY = 250;
		angle = (Math.random()*2*(Math.PI));
		speed = (Math.random()*2);
		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	}
	public void move()
	{
		myX = myX + (Math.cos(angle)*speed);
		myY = myY + (Math.sin(angle)*speed);

		if(myX<-250 || myX>750){
			speed= -speed;
		}
		if(myY<-250 || myY>750){
			speed= -speed;
		}


	}
	public void show()
	{
		//translate(250,250);
		//rotate(PI/4);	
		fill(myColor);
		rect((float)myX,(float)myY,6,6);
		//popMatrix();			

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
		myX = 250;
		myY = 250;
		angle = (Math.random()*1*Math.PI);
		speed = (Math.random()*4);
		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	}
	public void move()
	{
		angle += 0.02;
		myX = myX + speed*(Math.sin((int)(angle)));
		myY = myY + speed*(Math.cos((int)(angle)));
		
	}
	public void show()
	{
		background(255);
		fill(255);
		ellipse((float)myX,(float)myY,30,30);
	}	
}
class JumboParticle extends NormalParticle
{

	public void show()
	{
		fill(myColor);
		rect((float)myX,(float)myY,50,50);
	}
}

