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
  background(0);
  int sum =0;
  for(int y=5; y<=400; y+=50)
  {
    for(int x=5; x<= 400; x+=50)
    {
      Die allStar = new Die(x,y);
      allStar.show();
      allStar.roll();
      stroke(255);
      sum = sum + allStar.dNum;
    }
  }
  text("Sum of the dice: ",50,450);
  text(sum, 150,450);
  
  
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX, myY;
  int dNum;
  //variable declarations here
	Die(int x, int y) //constructor
	{
    roll();
		myX=x;
    myY=y;
	}
  
	void roll()
	{
    dNum=(int)(Math.random()*6)+1;
	}
	void show()
	{
    
    fill((int)(Math.random()*250)+6,(int)(Math.random()*250)+6,(int)(Math.random()*250)+6);
		rect(myX,myY,40,40,5);
    noStroke();
    if (dNum==1)
    {
      fill(255);
      ellipse(myX+20,myY+20,10,10);
    }
    if(dNum==2)
    {
      fill(255);
      ellipse(myX+10,myY+30,10,10);
      ellipse(myX+30,myY+10,10,10);
    }
    if(dNum==3)
    {
      fill(255);
      ellipse(myX+20,myY+20,10,10);
      ellipse(myX+7.5,myY+7.5,10,10);
      ellipse(myX+32.5,myY+32.5,10,10);
    }
    if(dNum==4)
    {
      fill(255);
      ellipse(myX+7.5,myY+7.5,10,10);
      ellipse(myX+32.5,myY+32.5,10,10);
      ellipse(myX+32.5,myY+7.5,10,10);
      ellipse(myX+7.5,myY+32.5,10,10);
    }
    if(dNum==5)
    {
      fill(255);
      ellipse(myX+7.5,myY+7.5,10,10);
      ellipse(myX+32.5,myY+32.5,10,10);
      ellipse(myX+32.5,myY+7.5,10,10);
      ellipse(myX+7.5,myY+32.5,10,10);
      ellipse(myX+20,myY+20,10,10);
    }
    if(dNum==6)
    {
      fill(255);
      ellipse(myX+7.5,myY+7.5,10,10);
      ellipse(myX+32.5,myY+32.5,10,10);
      ellipse(myX+32.5,myY+7.5,10,10);
      ellipse(myX+7.5,myY+32.5,10,10);
      ellipse(myX+7.5,myY+20,10,10);
      ellipse(myX+32.5,myY+20,10,10);
    }
	}
}