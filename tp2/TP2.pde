int estado = 0; 
int tiempoInicioEstado = 0;

PImage imgInicio;
PImage imgFinal;

PImage imgFlotante1;
PImage imgFlotante2;
PImage imgFlotante3;
PImage imgFlotante4;
PImage imgFlotante5;

PImage bgP1_0, bgP1_1, bgP1_2, bgP1_3, bgP1_4, bgP1_5, bgP1_6, bgP1_7, bgP1_8, bgP1_9;
PImage bgP2_0, bgP2_1, bgP2_2, bgP2_3, bgP2_4, bgP2_5, bgP2_6, bgP2_7, bgP2_8, bgP2_9;

float flotanteX, flotanteY;   
float anchoFlotante = 185;   
float altoFlotante = 185;    
float velocidadFlotante = 4;

float opacidadFlotante = 255;
float velocidadDesvanecer = 2; 

float textoX, textoY;
float tamanoTexto = 1;
PFont miFuente1;

float btnIniciarX = 225; 
float btnIniciarY = 325;
float btnIniciarTam = 150;

float btnReiniciarX = 425;
float btnReiniciarY = 50;
float btnReiniciarTam = 150;

void setup() {
  size(640, 480);
  
  miFuente1 = createFont("Arial", 24);
  textFont(miFuente1);
  
  imgInicio = loadImage("inicio.jpg");
  imgFinal = loadImage("final.jpg");
  
  imgFlotante1 = loadImage("personaje_p1.png"); 
  imgFlotante2 = loadImage("personaje_p2.png");
  imgFlotante3 = loadImage("personaje_p3.png");
  imgFlotante4 = loadImage("personaje_p4.png");
  imgFlotante5 = loadImage("personaje_p5.png");

  bgP1_0 = loadImage("p1_0.jpg"); bgP1_1 = loadImage("p1_1.jpg"); bgP1_2 = loadImage("p1_2.jpg");
  bgP1_3 = loadImage("p1_3.jpg"); bgP1_4 = loadImage("p1_4.jpg"); bgP1_5 = loadImage("p1_5.jpg");
  bgP1_6 = loadImage("p1_6.jpg"); bgP1_7 = loadImage("p1_7.jpg"); bgP1_8 = loadImage("p1_8.jpg");
  bgP1_9 = loadImage("p1_9.jpg");
  
  bgP2_0 = loadImage("p2_0.jpg"); bgP2_1 = loadImage("p2_1.jpg"); bgP2_2 = loadImage("p2_2.jpg");
  bgP2_3 = loadImage("p2_3.jpg"); bgP2_4 = loadImage("p2_4.jpg"); bgP2_5 = loadImage("p2_5.jpg");
  bgP2_6 = loadImage("p2_6.jpg"); bgP2_7 = loadImage("p2_7.jpg"); bgP2_8 = loadImage("p2_8.jpg");
  bgP2_9 = loadImage("p2_9.jpg");
  
  inicializarVariables();
}

void draw() {
  background(255);
  
  if (estado == 0) {
    dibujarPantallaInicio();
  } else if (estado == 1) {
    dibujarPantalla1();
  } else if (estado == 2) {
    dibujarPantalla2();
  } else if (estado == 3) {
    dibujarPantalla3();
  } else if (estado == 4) {
    dibujarPantalla4();
  } else if (estado == 5) {
    dibujarPantalla5();
  } else if (estado == 6) {
    dibujarPantallaFinal();
  }
}

void mousePressed() {
  if (estado == 0) {
    if (mouseX > btnIniciarX && mouseX < btnIniciarX + btnIniciarTam && mouseY > btnIniciarY && mouseY < btnIniciarY + btnIniciarTam) {
      cambiarDeEstado(1);
    }
  } 
  else if (estado == 6) {
    if (mouseX > btnReiniciarX && mouseX < btnReiniciarX + btnReiniciarTam && mouseY > btnReiniciarY && mouseY < btnReiniciarY + btnReiniciarTam) {
      inicializarVariables();
      cambiarDeEstado(0);
    }
  }
}
