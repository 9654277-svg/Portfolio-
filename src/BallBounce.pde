// Eliana steele| 11 Nov 2025 | BallBounce
ArrayList<Ball> balls =new ArrayList<Ball>();
void setup() {
size(500,500);
}

void draw() {
background(255);
//Display from Arraylist
for (int i = 0; i <balls.size(); i++) {
  Ball b =balls.get(i);
  b.display();
  b.move();
}
}
void mousePressed() {
balls.add(new Ball(mouseX,mouseY));
}
