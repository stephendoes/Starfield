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
class NormalParticle
{
	//your code here
	double  parAngle,  parX, parY;
	int parC1;int parC2; int parC3; int parSpeed;
	NormalParticle(int x, int y)
	{
		parX = x;
		parY = y;
		parC1 = (int)(Math.random()*255);
		parC2 = (int)(Math.random()*255);
		parC3 = (int)(Math.random()*255);
		parAngle = (int)(Math.random()*5)*Math.PI;
		parSpeed = (int)(Math.random()*5);

	}
	void move()
	{
		double xMove;
		double yMove;
		xMove = Math.cos(parAngle)*parSpeed;
		parX += xMove;
		yMove = Math.sin(parAngle)*parSpeed;
		parY += yMove;
	}
	void show()
	{
		fill(parC1,parC2,parC3);
		ellipse((float)parX,(float)parY,20,20);
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

