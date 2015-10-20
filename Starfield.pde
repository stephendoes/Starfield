//your code here
NormalParticle [] starField;
void setup()
{
	//your code here
	starField = new NormalParticle[20];
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
	for (int i = 0; i < colony.length; i++)
	{
		starField[i].move();
		starField[i].show();

	}

}
class NormalParticle
{
	//your code here
	double parX, parY, parAngle,  parSpeed;
	int parC1;int parC2; int parC3;  
	NormalParticle()
	{
		parX = x;
		parY = y;
		parC1 = (int)(Math.random()*255);
		parC2 = (int)(Math.random()*255);
		parC3 = (int)(Math.random()*255);
		parAngle = (int)(Math.random()*10);
		parSpeed = (int)(Math.random()*10);

	}
	void move()
	{
		parX + = Math.cos(parAngle)*parSpeed;
		parY + = Math.sin(parAngle)*parSpeed;
	}
	void show()
	{
		fill(parC1,parc2,parC3);
		ellipse(20,20,parX,parY);
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

