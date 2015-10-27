//your code here
NormalParticle [] starField;


void setup()
{
	//your code here
	starField = new NormalParticle[200];
	for (int i = 0; i <starField.length; i++)
	{
		starField[i] = new NormalParticle(200,200);
	}
	frameRate(30);
	size(400,400);
}

void draw()
{
	//your code here
	background(0);
	for (int i = 0; i < starField.length; i++)
	{

		starField[i].move();
		starField[i].show();

	}
	
}
void mousePressed()
	{
		redraw();
	}
class NormalParticle
{
	//your code here
	double  parAngle,  parX, parY, parReverse;
	int parC1;int parC2; int parC3; int parSpeed;int parSize;
	NormalParticle(int x, int y)
	{
		parX = x;
		parY = y;
		parC1 = (int)(Math.random()*255);
		parC2 = (int)(Math.random()*255);
		parC3 = (int)(Math.random()*255);
		parAngle = Math.random()*10*Math.PI;
		parSpeed = (int)(Math.random()*5);
		parSize = 7;

	}
	void move()
	{
		double xMove;
		double yMove;
	
		boolean moveOut;
		xMove= Math.cos(parAngle)*parSpeed;
		yMove= Math.sin(parAngle)*parSpeed;
		parX+=xMove;
		parY+=yMove;
	}
	void show()
	{
		fill(parC1,parC2,parC3);
		ellipse((float)parX,(float)parY,parSize,parSize);
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

