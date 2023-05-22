int tiempoInicio;
float buttonX;
float buttonY;
float buttonWidth = 100;
float buttonHeight = 100;
float fade;
PFont font;
String estado;
PImage r1, r2, r3, r4;
String titulo, texto1, texto2, texto3, texto4, sub1, info1, info2, info11, info4;
boolean reiniciar;

void setup() {

  size(640, 480);
  tiempoInicio = millis();
  estado = "inicio";
  reiniciar = false;

  buttonX = width/2 - buttonWidth/2;
  buttonY = height - 80;

  font = loadFont("Bodoni.vlw");

  r1 = loadImage("rainroom1.jpg");
  r2 = loadImage("rainroom2.jpg");
  r3 = loadImage("rainroom3.jpg");
  r4 = loadImage("rainroom4.jpg");

  titulo = "Rain Room: Una experiencia Interactiva";
  sub1 = "Por: RANDOM INTERNATIONAL";
  texto1= "Introducción a Rain Room";
  texto2 = "La Experiencia de Rain Room";
  texto3 = "Conceptos Explorados";
  texto4 = "Sitio Oficial";
  info1 = "RainRoom es una representación ampliada\nde nuestro entorno, donde la presencia\nhumana impide que la lluvia caiga.\nEsta experiencia única explora cómo\nlas relaciones humanas, tanto entre sí como\ncon la naturaleza, están cada vez más\ninfluenciadas por la tecnología.\nDentro de una habitación oscura y\nespaciosa, equipada con sensores de\nmovimiento y control de agua,\n";
  info11 = "RainRoom crea una atmósfera fascinante. Estos sensores detectan los movimientos\nde las personas y controlan la caída de la lluvia, lo que permite a los visitantes\nsumergirse en un aguacero continuo mientras exploran el espacio.\n";
  info2 = "RainRoom busca explorar la relación entre los humanos y\nel entorno natural, especialmente nuestra percepción\ny la conexión humana con el entorno.";
  // info3 = "";
}
void draw() {

  background(242);

  if (estado.equals("inicio")) {
    // pantalla 1
    image(r1, 0, 0);
    fill(193);
    textAlign(CENTER);
    textFont(font);
    textSize(26);
    text(titulo, width/2, height/2 + 195);

    fill(193);
    textAlign(CENTER);
    textFont(font);
    textSize(16);
    text(sub1, width/2, height/2 + 230);

    if (millis() - tiempoInicio > 5000) {
      estado = "intro";
      tiempoInicio = millis();
    }
  } else if (estado.equals("intro")) {
    // pantalla 2
    image(r2, 20, 100);
    fill(80);
    textAlign(CENTER);
    textFont(font);
    textSize(26);
    text(texto1, width/2, 50);

    textAlign(LEFT);
    textFont(font);
    textSize(14);
    fill(52, fade);
    text(info1, 350, 150);
    textAlign(CENTER);
    text(info11, width/2, 390);

    fade = 127 * sin(millis() / 2800) + 127; // animación de desvanecimiento

    if (millis() - tiempoInicio > 8000) {
      estado = "conceptos";
      tiempoInicio = millis();
    }
  } else if (estado.equals("conceptos")) {
    // pantalla 3
    image(r3, 80, height/2 - 20);
    fill(52);
    textAlign(CENTER);
    textSize(26);
    text(texto1, width/2, 50);
    textSize(18);
    text(info2, width/2, 150);
    if (millis() - tiempoInicio > 8000) {
      estado = "sitio";
      tiempoInicio = millis();
    }
  } else if (estado.equals("sitio")) {

    // Última diapositiva con botón de reinicio
    // Botón de reinicio
    image(r4, 0, 0);
    rectMode(CENTER);
    fill(0);
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
    fill(255);
    textSize(20);
    text("Reiniciar presentación", width/2, height - 50);

    if (reiniciar) {
      tiempoInicio = millis();
      estado = "inicio";
      reiniciar = false;
    }
  }
}

void mousePressed() {
  if (estado.equals("sitio")) {
    reiniciar = true;
  }
}
