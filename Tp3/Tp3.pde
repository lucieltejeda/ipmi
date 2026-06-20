///https://youtu.be/Wdo1MS64AAc
PImage referencia;

float velocidad = 0.5;
float rotacionGlobal = 0;

void setup() {
  size(800, 400);
  referencia = loadImage("33.jpeg");
  noStroke();
  ellipseMode(CENTER);
}

void draw() {

 ///fondo de mi imagen
  background(#24b574);

  // Imagen de refe
  image(referencia, 0, 0, 380, 400);

  // Patrón OP ART
  pushMatrix();
  translate(640, 200);
  rotate(radians(rotacionGlobal));

  dibujarTunel();

  popMatrix();


  rotacionGlobal += velocidad;
}

// funcion principal
void dibujarTunel() {

  for (int anillo = 7; anillo > 0; anillo--) {

    int cantidadPorAnillo = 6 + anillo * 3;

    for (int i = 0; i < cantidadPorAnillo; i++) {

      float angulo = TWO_PI * i / cantidadPorAnillo;

      float radio;

      if (anillo == 7)      radio = anillo * 36;
      else if (anillo == 6) radio = anillo * 31;
      else if (anillo == 5) radio = anillo * 27;
      else if (anillo == 4) radio = anillo * 23.5;
      else if (anillo == 3) radio = anillo * 20.5;
      else                  radio = anillo * 18.5;

      float x = cos(angulo) * radio;
      float y = sin(angulo) * radio * 0.93;

      float tamano = map(anillo, 1, 7, 9, 44);

      // borde de los circulos b y n
      fill(255);
      arc(x, y, tamano + 2, tamano + 2,
          radians(135), radians(315));

      fill(0);
      arc(x, y, tamano + 2, tamano + 2,
          radians(315), radians(495));

      // circulos violetas
      fill(#662f94);
      ellipse(x, y, tamano, tamano);
    }
  }


/// cirfculo chiquito del medio 
  fill(255);
  arc(0, 0, 10, 10,
      radians(135), radians(315));

  fill(0);
  arc(0, 0, 10, 10,
      radians(315), radians(495));

  fill(#6A3296);
  ellipse(0, 0, 8, 8);
}

// interacción con el mouse
float calcularVelocidad() {
  return map(mouseX, 400, 800, -1.8, 1.8);
}

void mouseMoved() {
  velocidad = calcularVelocidad();
}
