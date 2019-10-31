Particle [] stars;
OddballParticle [] oddball;
void setup()
{
	background(0);
	size(500,500);
	stars = new Particle[(int)(Math.random()*200)+300];
	oddball = new OddballParticle[(int)(Math.random()*10)+1];
	for(int i=0;i<stars.length;i++)
	{
		stars[i]=new Particle();
	}
	for(int ii=0;ii<oddball.length;ii++)
		oddball[ii] = new OddballParticle();

}
void draw()
{
	for(int i=0;i<stars.length;i++)
	{
	stars[i].move();
	stars[i].show();
	}
	for(int ii=0;ii<oddball.length;ii++){
		oddball[ii].move();
		oddball[ii].show();
	}
	fill(0);
	ellipse(width/2,height/2,50,50);
}
void mousePressed()
{
	background(0);
	stars = new Particle[(int)(Math.random()*200)+300];
	oddball = new OddballParticle[(int)(Math.random()*10)+1];
	for(int i=0;i<stars.length;i++)
	{
		stars[i]=new Particle();
	}
	for(int ii=0;ii<oddball.length;ii++)
		oddball[ii] = new OddballParticle();
}
class Particle
{
	double myX, myY, myAngle, mySpeed;
	int myColor;
	Particle()
	{
		myX=width/2;
		myY=height/2;
		myAngle=Math.random()*(2*Math.PI);
		mySpeed=Math.random()*10;
		myColor=color((int)(Math.random()*100),(int)(Math.random()*100),(int)(Math.random()*155)+100);
	}
	void move()
	{
		myX=myX+(Math.cos(myAngle)*mySpeed);
		myY=myY+(Math.sin(myAngle)*mySpeed);
	}
	void show()
	{
		fill(myColor);
		noStroke();
		ellipse((float)myX,(float)myY,5,5);
	}
}

class OddballParticle extends Particle
{
	OddballParticle()
	{
		super();
	}
	void show()
	{
		fill(myColor);
		stroke(0);
		rect((float)myX,(float)myY,69,69);
	}

}


