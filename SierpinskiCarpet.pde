public int screenSize;
public void setup(){
	background(255);
	screenSize = 450;
	size(screenSize, screenSize);
}
public void draw(){
	sierpinski(0, 0, screenSize - 1, screenSize - 1);
}
public void sierpinski(int x, int y, int lenX, int lenY) {
	if(lenX > 5 || lenY > 5){
		int len = lenX = lenY;
		sierpinski(x, y, len/3, len/3);
		sierpinski(x + len/3, y, len/3, len/3);
		sierpinski(x + 2*len/3, y, len/3, len/3);
		sierpinski(x, y + len/3, len/3, len/3);
		sierpinski(x, y + 2*len/3, len/3, len/3);
		sierpinski(x + len/3, y + 2*len/3, len/3, len/3);
		sierpinski(x + 2*len/3, y + len/3, len/3, len/3);
		sierpinski(x + 2*len/3, y + 2*len/3, len/3, len/3);
	} else {
		fill(0);
		rect(x, y, lenX, lenY);
	}
}
