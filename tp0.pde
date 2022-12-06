/*
tp0
 Kevin Jason Williams
 N° legajo 91377/4
*/

void setup() {
  size(1000, 600);
  textSize(50);
}

void draw() {
  println("x");
  println(mouseX);
  println("y");
  println(mouseY);
  background(30);
  fill(26, 255, 215);
  ellipse(500, 300, 500, 500);
  fill(255);
  ellipse(391, 220, 150, 150);
  ellipse(608, 220, 150, 150);
  fill(0, 255, 0);
  ellipse(391, 220, 80, 150);
  ellipse(608, 220, 80, 150);
  fill(0);
  ellipse(391, 220, 30, 30);
  ellipse(608, 220, 20, 20);
  fill(231, 232, 28);
  rect(352, 390, 300, 100);
  line(352, 436, 652, 436);
  line(394, 390, 396, 491);
  line(434, 390, 437, 490);
  line(470, 390, 471, 490);
  line(510, 390, 511, 490);
  line(550, 390, 551, 490);
  line(590, 390, 591, 490);
  line(620, 390, 621, 490);
  triangle(250, 300, 261, 368, 170, 237);
  triangle(749, 298, 743, 353, 815, 246);
}
