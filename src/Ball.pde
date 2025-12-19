class Ball {
  int x,y,w,h, speed;
  
  Ball(int x, int y) {
  this.x=x;
 this.y=y;
 w=30;
  h=30;
   speed = int(random(1,5));
}

void display() {
  fill(127);
  ellipse(x,y,w,h);
}

void move() {
  //addong bounce colision 
  x+=speed;
}
}
