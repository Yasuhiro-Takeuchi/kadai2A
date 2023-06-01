int ellipseX;
int ellipseY;
int xspeed;
int triangleX1, triangleX2, triangleX3;
int x, y;
int i = 2;
void setup() {
  size(500, 500);
  xspeed = 0;
  ellipseX = 100;
  ellipseY = 100;
  triangleX1 = 100;
  triangleX2 = 180;
  triangleX3 = 20;
  x = 1;
  y = 1;
}

void draw() {
  background(0);
  x = x + i;
  triangleX1 = triangleX1 + xspeed;
  triangleX2 = triangleX2 + xspeed;
  triangleX3 = triangleX3 + xspeed;
  //ellipse(ellipseX, ellipseY, 100, 100);
  text(x, 10, 35);
  text(triangleX2, 10, 52);
  translate(x, y);
  triangle(triangleX1, 20, triangleX2, 180, triangleX3, 180);

  //ellipseX = ellipseX + xspeed;
  if ( x == 500) {
    i=-1;
  } else if (x == 0) {
    i = 1 ;
  }
}
