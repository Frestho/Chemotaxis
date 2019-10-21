 //declare bacteria variables here
 Bacteria[] bacteria;
 void setup()
 {
 	//initialize bacteria variables here
    size(500, 500);
    bacteria = new Bacteria[100];
    for(int i = 0; i < bacteria.length; i++) {
        bacteria[i] = new Bacteria();
    }
 }
 void draw()
 {
 	background(90);
 	//move and show the bacteria
 	for(int i = 0; i < bacteria.length; i++) {
 	    bacteria[i].move();
 	    bacteria[i].show();
 	}
 }
 class Bacteria
 {
 	//lots of java!
 	double myX, myY;
 	color myColor;
 	Bacteria() {
 	    myX = 0;
 	    myY = Math.random() * 500;
		myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
 	}
 	void move() {
 	    myX += Math.random() * 4 - 1;
 	    myY += Math.random() * 6 - 3;
 	}
 	void show() {
		fill(myColor);
 	    ellipse((float) myX, (float) myY, 20, 20);
 	}
 }
