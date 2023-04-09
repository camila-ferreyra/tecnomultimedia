PImage img;

void setup() {

  size(800, 400);
  img = loadImage("retrato.png");
}

void draw() {

  background(220, 234, 242);
  image(img, 400, 0);


  // ---------- CABELLO ATRÁS ----------

  push();
  fill(249, 252, 199);
  stroke(236, 250, 156);

  beginShape(QUADS);
  vertex(110, 0);
  vertex(70, 350);
  vertex(300, 350);
  vertex(200, 0);
  endShape();

  noStroke();
  fill(230, 247, 162);
  triangle(143, 60, 70, 350, 110, 350);
  pop();

  // ---------- ROSTRO ----------

  push();
  fill(255, 241, 234);
  noStroke();
  smooth();
  arc(0, 135, 260, 260, radians(-90), radians(90));

  // estos triángulos los estoy utilizando para crear la parte inferior del rostro
  triangle(0, 400, 100, 315, 130, 150); 
  triangle(0, 400, 122, 200, 0, 150);
  triangle(0, 400, 60, 400, 65, 330);
  pop();       // --> push() recuerda la configuración de estilo y pop() descarta los cambios de estilo desde el último push()

  // ---------- NARIZ ----------

  push();
  fill(245, 223, 213);
  noStroke();
  ellipse(0, 245, 30, 30);
  ellipse(9, 243, 20, 20);
  triangle(0, 180, 0, 235, 10, 235);

  // ---------- CONTORNO ROSTRO ----------
  smooth();
  stroke(245, 223, 213);
  strokeWeight(2);
  line(130, 130, 100, 315);
  line(100, 315, 0, 400);
  line(60, 400, 65, 345);
  pop();

  // ---------- OJO ----------

  push();
  stroke(70, 70, 70);
  strokeWeight(2);
  bezier(30, 180, 60, 110, 100, 160, 100, 170);

  strokeWeight(1);
  ellipse(65, 160, 30, 30);
  fill(173, 147, 122);
  ellipse(65, 160, 20, 20);
  pop();

  push();
  noStroke();
  ellipse(69, 153, 8, 10);
  pop();

  // ---------- CEJA ----------

  push();
  fill(236, 250, 156);
  stroke(193, 198, 160);

  beginShape(QUADS);
  vertex(35, 133);
  vertex(80, 128);
  vertex(100, 133);
  vertex(34, 143);
  endShape();
  pop();

  // ---------- CABELLO ----------

  push();
  fill(249, 252, 199);
  stroke(236, 250, 156);

  beginShape(QUADS);
  vertex(0, 0);
  vertex(40, 0);
  vertex(55, 130);
  vertex(0, 130);

  vertex(35, 0);
  vertex(70, 130);
  vertex(150, 130);
  vertex(145, 0);
  endShape();

  noStroke();
  fill(230, 247, 162);
  triangle(0, 0, 0, 130, 10, 130);
  triangle(80, 0, 100, 130, 110, 130);

  pop();

  // ---------- LABIOS Y SORBETE ----------

  push();
  smooth();
  stroke(211, 92, 120);
  fill(211, 92, 120);
  bezier(0, 300, -20, 335, 10, 330, 42, 310);
  endShape();
  fill(201, 202, 240);
  stroke(195, 195, 227);

  beginShape(QUADS);
  vertex(5, 302);
  vertex(20, 302);
  vertex(13, 400);
  vertex(0, 400);
  endShape();
  stroke(250);
  strokeWeight(3);
  line(16, 305, 9, 400);

  stroke(211, 92, 120);
  fill(211, 92, 120);
  ellipse(0, 300, 13, 13);
  bezier(3, 302, 4, 280, 20, 295, 40, 310);
  pop();

  // ---------- GORRITO ----------

  push();
  smooth();
  fill(90, 134, 222);
  bezier(-600, -30, 100, 100, 260, 30, 225, -30);
  pop();

  // ---------- LENTES ----------

  push();
  stroke(204, 205, 206);
  fill(255, 255, 255, 150);

  beginShape(QUADS);
  vertex(15, 185);
  vertex(130, 195);
  vertex(120, 235);
  vertex(24, 235);
  endShape();

  line(0, 185, 15, 185);
  line(0, 191, 15, 192);

  pop();
}
