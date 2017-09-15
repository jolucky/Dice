/*
  Somebody once told me the world is gonna roll me
  I ain't the sharpest tool in the shed
  She was looking kind of dumb with her finger and her thumb
  In the shape of an "L" on her forehead
  And the years start coming and they don't stop coming
  Fed to the rules and I hit the ground running
  Didn't make sense not to live for fun
  Your brain gets smart but your head gets dumb
  So much to do, so much to see
  So what's wrong with taking the backstreets
  You'll never know if you don't go
  You'll never shine if you don't glow
  Hey now, you're an all star, get your game on, go play
  Hey now, you're a rock star, get your show on, get paid
  All that glitters is gold
  Only shooting stars break the mold
  It's a cold place and they say it gets colder
  You're bundled up now but wait 'til you're older
  But the meteor men beg to differ
  Judging by the hole in the satellite picture
  The ice we skate is getting pretty thin
  The water's warm so you might as well swim
  My world's on fire, how about yours?
  That's the way I like it and i'll never get bored
  Hey now, you're an all star, get your game on, go play
  Hey now, you're a rock star, get your show on, get paid
  All that glitters is gold
  Only shooting stars break the mold
  Somebody once asked me could I spare some change for gas
  I need to get myself away from this place
  I said yep what a concept
  I could use a little fuel myself
  And we could all use a little change
  Hey now, you're an all star, get your game on, go play
  Hey now, you're a rock star, get your show on, get paid
  All that glitters is gold
  Only shooting stars break the mold
*/

void setup()
{
	size(400,500);
  noLoop();
}
void draw()
{
  for(int y=5; y<=400; y+=50)
  {
    for(int x=5; x<= 400; x+=50)
    {
      Die allStar = new Die(x,y);
      allStar.show();
    }
  }
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
  //variable declarations here
	Die(int x, int y) //constructor
	{
		myX=x;
    myY=y;
	}
  
	void roll()
	{
		
	}
	void show()
	{
    fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		rect(myX,myY,40,40,5);
	}
}