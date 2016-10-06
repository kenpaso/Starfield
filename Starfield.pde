Particle [] billion;
void setup()
{
	size(1000,1000);
 	billion = new Particle[1000];
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
		myX = 500;
		myY = 500;
		angle = (Math.random()*2*(Math.PI));
		speed = (Math.random()*2);
		myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
	}
	public void move()
	{
		myX = myX + (Math.cos(angle)*speed);
		myY = myY + (Math.sin(angle)*speed);

		if(myX<-500 || myX>1500){
			speed= -speed;
		}
		if(myY<-500 || myY>1500){
			speed= -speed;
		}


	}
	public void show()
	{
		//pushMatrix();
		//translate(500,500);
		//rotate(PI/4);	
		fill(myColor);
		rect((float)myX,(float)myY,12,12);
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
		myX = 500;
		myY = 500;
		angle = (Math.random()*2*Math.PI);
		speed = (Math.random()*7);
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
		fill(255);
		ellipse((float)myX,(float)myY,50,50);
	}	
}
class JumboParticle extends NormalParticle
{

	public void show()
	{
		fill(myColor);
		rect((float)myX,(float)myY,200,200);
	}
}

