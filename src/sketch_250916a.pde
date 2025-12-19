// Eliana Steele | Aug 28 2025 | Computer Timeline

void setup() {
size(900,400);
background(128);
}

// draw runs 30 fps loop
void draw() {
 background (128);
 drawRef();
 histEvent(780,150, "Mechanical Calculator 1609",true, "calculate fractions of a degree made by Wilhelm schickard");
 histEvent(700,250, "punch-card data proccesing 1804",false, "proccesed data by punch cards");
 histEvent(600,150, "title 3",true, "Detail03");
 histEvent(500,250, "title 4",false, "Detail04");
 histEvent(400,150, "title 5",true, "Deatil5");
 histEvent(300,250, "title 6",false, "Detail6");
 histEvent(200,150, "title 7",true, "Detail7");
 histEvent(100,250, "title 8",false, "Detail8");
}

void drawRef() {
  //draw title
 textAlign(CENTER);
 textSize(36);
 fill(23,100,29);
 text("Historic Computer Systems",width/2,60);
 textSize(10);
 text("by Eliana Steele" , width/2, 90);
 
// Draw Timeline
 strokeWeight(3);
 line(50,200,850,200);
 strokeWeight(2);
 line(50,195,50,210);
 text("1935",50,185);
 line(850,190,850,210);
 text("2005",850,185);
}

void histEvent(int x, int y, String title, boolean top, String detail) {
  if(mouseX>x-40 && mouseX<x+40 && mouseY>y-15 && mouseY<y+15)  {
   text(detail, width/2, 350);
  } 
  
  if(top == true) {
  line(x,y,x+20,y+50);
} else {
  line(x,y,x-20,y-50); 
}
  rectMode(CENTER);
  fill(#1E4EAD);
  strokeWeight(2);
  rect(x,y,80,30,7);
  fill(255);
  text(title,x,y+9);
}
