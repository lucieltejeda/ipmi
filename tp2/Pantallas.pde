void dibujarPantallaInicio() {
  image(imgInicio, 0, 0, 640, 480);
  dibujarBoton(btnIniciarX, btnIniciarY, btnIniciarTam, "Iniciar");
}

void dibujarPantalla1() {
  dibujarFondoAnimadoP1();
  
  if (textoX < 80) { 
    textoX += 4; 
  }
  
  fill(255); 
  textSize(20);
  text("Elfen Lied comienza con Lucy, una chica con poderes invisibles, escapando de un laboratorio donde la tenían encerrada y experimentaban dolorosamente con ella.", textoX, 60, 480, 300);
  
  actualizarYDibujarElementoFlotante();
  
  if (millis() - tiempoInicioEstado > 8000) { 
    cambiarDeEstado(2);
  }
}

void dibujarPantalla2() {
  dibujarFondoAnimadoP2();
  
  if (textoX > 80) { 
    textoX -= 4; 
  }
  
  fill(255); 
  textSize(20);
  text("Tras poder escapar, pierde parte de la memoria y adopta una personalidad inocente llamada “Nyu”. Kouta y Yuka la encuentran y la llevan a vivir con ellos.", textoX, 60, 480, 300);
  
  actualizarYDibujarElementoFlotante();
  
  if (millis() - tiempoInicioEstado > 8000) { 
    cambiarDeEstado(3);
  }
}

void dibujarPantalla3() {
  dibujarFondoAnimadoP2(); 
  
  if (textoY > 60) { 
    textoY -= 3; 
  }
  
  fill(255); 
  textSize(20);
  text("Mientras avanza la historia, se descubre que Lucy sufrió muchísimo desde niña y que tiene un vínculo emocional con Kouta desde el pasado.", 100, textoY, 450, 300);
  
  actualizarYDibujarElementoFlotante();
  
  if (millis() - tiempoInicioEstado > 8000) { 
    cambiarDeEstado(4);
  }
}

void dibujarPantalla4() {
  dibujarFondoAnimadoP2();
  
  if (tamanoTexto < 22) { 
    tamanoTexto += 0.3; 
  } 
  
  fill(255); 
  textSize(tamanoTexto);
  text("También se revela que Lucy cometió un hecho terrible relacionado con la familia de Kouta, lo que vuelve la relación entre ambos muy dolorosa.", 100, 240, 450, 300);
  
  actualizarYDibujarElementoFlotante();
  
  if (millis() - tiempoInicioEstado > 9000) { 
    cambiarDeEstado(5);
  }
}

void dibujarPantalla5() {
  dibujarFondoAnimadoP2();
  
  fill(255); 
  textSize(20);
  text("Al final, Lucy enfrenta sola al ejército que los persigue para proteger a los demás, el animé termina dejando un final abierto sobre si sobrevivió o no.", 100, 60, 450, 300);
  
  actualizarYDibujarElementoFlotante();
  
  if (millis() - tiempoInicioEstado > 8000) { 
    cambiarDeEstado(6);
  }
}

void dibujarPantallaFinal() {
  image(imgFinal, 0, 0, 640, 480);
  dibujarBoton(btnReiniciarX, btnReiniciarY, btnReiniciarTam, "Reiniciar");
}
