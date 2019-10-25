Particle [] stars;
void setup()
{
	background(0);
	size(500,500);
	stars = new Particle[(int)(Math.random()*200)+300];
	for(int i=0;i<stars.length;i++)
	{
		stars[i]=new Particle();
	}
}
void draw()
{
	//your code here
}
class Particle
{
	int myX, myY, myAngle, mySpeed;
}

class OddballParticle //inherits from Particle
{
	//your code here
}


