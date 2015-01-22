public void setup()
{
	size(800,800);
	background(#D0A6FF);
}
public void draw()
{
  sierpinski(50, 750, 700);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if (len > 20){
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
	else {
		noStroke();
		triangle(x, y, x+len, y, x+len/2, y-len);
	}
}

