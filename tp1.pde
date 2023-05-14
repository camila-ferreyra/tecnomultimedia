// ---- camila ferreyra navarro | legajo: 88162/5 ----
String estado = "inicio";
int tiempoInicio;
int duracionTexto;
int duracionPantalla = 5000;
float buttonX;
float buttonY;
float buttonWidth = 100;
float buttonHeight = 40;

void setup() {
  size(640, 480);
  tiempoInicio = millis(); // esto guarda el tiempo de inicio del programa

  // ---- calcula las coordenadas del botón de reinicio ----

  buttonX = width/2 - buttonWidth/2;
  buttonY = height - 80;
  
}

void draw() {

  background(255);
  int tiempoActual = millis() - tiempoInicio;

  // ---- cambio de estados en función del tiempo transcurrido ----

  if (tiempoActual > duracionTexto) {
    if (estado.equals("inicio")) {
      estado = "intro";
      duracionTexto = 3000; // tiempo de transición
    } else if (estado.equals("intro")) {
      estado = "experiencia";
      duracionTexto = 4000; // tiempo de transición
    } else if (estado.equals("experiencia")) {
      estado = "conceptos";
      duracionTexto = 6000; // tiempo de transición
    } else if (estado.equals("conceptos")) {
      estado = "sitio";
      duracionTexto = 2000; // tiempo de transición
    } else if (estado.equals("sitio")) {
      mousePressed();
      duracionTexto = 5000; // tiempo de transición
    }
    tiempoInicio = millis();  // reiniciar el tiempo de inicio
  }

  // ---- mostrar contenido de cada estado ----

  if (estado.equals("inicio")) {
    fill(0);
    textAlign(CENTER);
    textSize(24);
    text("Rain Room: Una experiencia Interactiva", width/2, height/2);
  } else if (estado.equals("intro")) {
    fill(0);
    textAlign(CENTER);
    textSize(24);
    text("Introducción a Rain Room", width/2, height/2);
  } else if (estado.equals("experiencia")) {
    fill(0);
    textAlign(CENTER);
    textSize(24);
    text("La Experiencia de Rain Room", width/2, height/2);
  } else if (estado.equals("conceptos")) {
    fill(0);
    textAlign(CENTER);
    textSize(24);
    text("Conceptos Explorados", width/2, height/2);
  } else if (estado.equals("sitio")) {
    fill(0);
    textAlign(CENTER);
    textSize(24);
    text("Sitio Oficial", width/2, height/2);

    // ---- dibuja el botón de reinicio ----

    fill(0);
    rect(buttonX, buttonY, buttonWidth, buttonHeight);
  }
}

void mousePressed() {
  if (estado.equals("sitio")) {
    if (dist(mouseX, mouseY, buttonX + buttonWidth/2, buttonY + buttonHeight/2) < buttonWidth/2) {
      estado = "inicio";
      tiempoInicio = millis(); // reiniciar el tiempo de inicio
      duracionTexto = 5000; // establecer la duración predeterminada para el estado "inicio"
    }
  }
}
