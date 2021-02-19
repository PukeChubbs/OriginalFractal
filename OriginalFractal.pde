int r,g,b;
int count = 0;
int count2 = 1;
public void setup()
{
	size(1000, 1000);
	rectMode(CENTER);
}

public void draw()
{
	background(0);
	fractal(width / 2, height / 2, (width + height) / 2);
}

public void mousePressed()
{
	background(0);
	if (count == 1) 
	{
	count = 0;
	}
	else if (count == 0) 
	{
	count = 1;
	}
}

public void keyPressed()
{
	if (key == 'A'|| key == 'a')
	{
		if(count2 == 1) 
		{
		count2=0;
		}
		else if(count2 == 0) 
		{
		count2 = 1;
		}
	}
}

public void fractal(int x, int y, int siz)
{
	r = (int)(Math.random() * 255);
	g = (int)(Math.random() * 255);
	b = (int)(Math.random() * 255);
	if (count == 1)
	{
		fill(r, g, b);
		ellipse(x, y, siz, siz);
		if (siz > 5)
		{
			if (count2==1)
			{
				fractal(x - siz / 2, y, siz / 2);
				fractal(x + siz / 2, y, siz / 2);
			}
			else if (count2 == 0)
			{
				fractal(x, y - siz / 2, siz / 2);
				fractal(x, y + siz / 2, siz / 2);
			}
		}
	}
	if (count == 0)
	{
		fill(r, g, b);
		rect(x, y, siz, siz);
		if (siz > 5)
		{
			if(count2 == 1)
			{
				fractal(x - siz / 2, y, siz / 2);
				fractal(x + siz / 2, y, siz / 2);
			}
			else if(count2 == 0)
			{
				fractal(x, y - siz / 2, siz / 2);
				fractal(x, y + siz / 2, siz / 2);
			}
		}
	}
}
