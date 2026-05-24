void inicializarVariables() {
  textoX = -400; 
  textoY = 530; 
  tamanoTexto = 10;
}

void cambiarDeEstado(int nuevoEstado) {
  estado = nuevoEstado;
  tiempoInicioEstado = millis(); 
  
  if (estado == 1) {
    anchoFlotante = 220;
    altoFlotante = 220;
    flotanteX = -anchoFlotante; 
    flotanteY = 480 - altoFlotante;
    velocidadFlotante = 4;
  } 
  else if (estado == 2) {
    anchoFlotante = 260;
    altoFlotante = 220;
    flotanteX = 640; 
    flotanteY = 480 - altoFlotante;
    velocidadFlotante = -4;
    textoX = 690; 
  } 
  else if (estado == 3) {
    anchoFlotante = 185;
    altoFlotante = 185;
    opacidadFlotante = 255; 
    flotanteX = -anchoFlotante; 
    flotanteY = 480 - altoFlotante;
    velocidadFlotante = 4;
  } 
  else if (estado == 4) {
    anchoFlotante = 250;
    altoFlotante = 250;
    flotanteX = -anchoFlotante; 
    flotanteY = 35; 
    velocidadFlotante = 3;
  } 
  else if (estado == 5) {
    anchoFlotante = 260;
    altoFlotante = 260;
    flotanteX = 640; 
    flotanteY = 480 - altoFlotante;
    velocidadFlotante = -4;
  }
}

void dibujarFondoAnimadoP1() {
  int fotograma = (frameCount / 3) % 10;
  if (fotograma == 0) image(bgP1_0, 0, 0, 640, 480);
  else if (fotograma == 1) image(bgP1_1, 0, 0, 640, 480);
  else if (fotograma == 2) image(bgP1_2, 0, 0, 640, 480);
  else if (fotograma == 3) image(bgP1_3, 0, 0, 640, 480);
  else if (fotograma == 4) image(bgP1_4, 0, 0, 640, 480);
  else if (fotograma == 5) image(bgP1_5, 0, 0, 640, 480);
  else if (fotograma == 6) image(bgP1_6, 0, 0, 640, 480);
  else if (fotograma == 7) image(bgP1_7, 0, 0, 640, 480);
  else if (fotograma == 8) image(bgP1_8, 0, 0, 640, 480);
  else if (fotograma == 9) image(bgP1_9, 0, 0, 640, 480);
}

void dibujarFondoAnimadoP2() {
  int fotograma = (frameCount / 3) % 10;
  if (fotograma == 0) image(bgP2_0, 0, 0, 640, 480);
  else if (fotograma == 1) image(bgP2_1, 0, 0, 640, 480);
  else if (fotograma == 2) image(bgP2_2, 0, 0, 640, 480);
  else if (fotograma == 3) image(bgP2_3, 0, 0, 640, 480);
  else if (fotograma == 4) image(bgP2_4, 0, 0, 640, 480);
  else if (fotograma == 5) image(bgP2_5, 0, 0, 640, 480);
  else if (fotograma == 6) image(bgP2_6, 0, 0, 640, 480);
  else if (fotograma == 7) image(bgP2_7, 0, 0, 640, 480);
  else if (fotograma == 8) image(bgP2_8, 0, 0, 640, 480);
  else if (fotograma == 9) image(bgP2_9, 0, 0, 640, 480);
}

void dibujarBoton(float x, float y, float tam, String etiqueta) {
  if (mouseX > x && mouseX < x + tam && mouseY > y && mouseY < y + tam) {
    fill(170, 26, 31);
  } else {
    fill(227, 30, 36);
  }
  rect(x, y, tam, tam); 
  fill(255);
  textSize(22);
  text(etiqueta, x + 35, y + 80);
}

void actualizarYDibujarElementoFlotante() {
  if (estado > 0 && estado < 6) {
    
    flotanteX = flotanteX + velocidadFlotante;
    
    if (estado == 1) {
      image(imgFlotante1, flotanteX, flotanteY, anchoFlotante, altoFlotante);
    } 
    else if (estado == 2) {
      image(imgFlotante2, flotanteX, flotanteY, anchoFlotante, altoFlotante);
    } 
    else if (estado == 3) {
      tint(255, opacidadFlotante);
      image(imgFlotante3, flotanteX, flotanteY, anchoFlotante, altoFlotante);
      noTint(); 
      
      if (opacidadFlotante > 0) {
        opacidadFlotante -= velocidadDesvanecer;
      }
    } 
    else if (estado == 4) {
      image(imgFlotante4, flotanteX, flotanteY, anchoFlotante, altoFlotante);
    } 
    else if (estado == 5) {
      image(imgFlotante5, flotanteX, flotanteY, anchoFlotante, altoFlotante);
    }
  }
}
