PImage FondoMenu, Jugar, Creditos, ComoJugar, FondoCreditos, volver, FondoInstrucciones;
PFont Font1;
int ejeYCreditos = 600;
int Veloejey = 5;

String Autor, Legajo, Inspirado, Vaquero, Alien, GanaVaquero, GanaAlien, Vida;
boolean MenuSi = true;
boolean CreditosSi = false;
boolean InstruccionesSi = false;
boolean JugarSi = false;


void CargaDeImgMenu() {

  FondoMenu = loadImage("imgMenu/Fondomenu.jpg");
  Jugar = loadImage("imgMenu/Jugar.png");
  Creditos = loadImage("imgMenu/Creditos.png");
  ComoJugar = loadImage("imgMenu/comoJugar.png");
  FondoCreditos = loadImage("imgMenu/FondoCreditos.png");
  volver = loadImage("imgMenu/volver.png");
  FondoInstrucciones = loadImage("imgMenu/Instrucciones.jpg");
 

  Font1 = createFont("Font.ttf", 30);

  Autor = "Juego Creado por: \n Kevin Jason Williams ";
  Legajo = "N° de Legajo: \n 91377/4 ";
  Inspirado = "inspirado en: \n cowboy vs alien ";
  Vaquero = "Vaquero: \n W-A-S movimientos \n BARRA ESPACIADORA disparo";
  Alien = "Alien: \n IZQUIERDA-ARRIBA-DERECHA (flechas) movimientos \n Ñ disparo";
  GanaVaquero = "GANAN LOS VAQUEROSS!!!!!";
  GanaAlien = "GANAN LOS ALIENSS!!!";
  Vida = "El primero que logre dar 2 o 3 impactos GANA!!";
}
void PantallaMenu() {

  image(FondoMenu, 0, 0, 1300, 600);
  image(Jugar, 490, 500, 270, 80);
  image(Creditos, 100, 500, 270, 80);
  image(ComoJugar, 850, 500, 270, 80);

  Botones(Jugar, 490, 500, 280, 90, 270, 580);
  Botones(Creditos, 100, 500, 280, 90, 270, 580);
  Botones(ComoJugar, 850, 500, 280, 90, 270, 580);


  /////////////// Reinicio de variables
  vidaVaquero = 3;
  vaqueromuerto = false;
  vidaAlien = 3;
  alienmuerto = false;
  ejeYCreditos = 600;
  direX= 0;
  direY = 300;
  QuietoDer = true ;
  AlienDireX= 900;
  AlienDireY = 330;
  QuietoIzqAlien = true ;
  QuietoDerAlien = false;
}



void PantallaCreditos() {


  image(FondoCreditos, 0, 0, 1300, 600);
  image(volver, 50, 50, 50, 50);


  Botones(volver, 50, 50, 52, 52, 50, 100);


  fill(0);
  textSize(30);
  textAlign(CENTER);
  textFont(Font1);
  ejeYCreditos--;

  ejeYCreditos = ejeYCreditos - Veloejey;
  text(Autor, 600, ejeYCreditos);
  text(Legajo, 600, ejeYCreditos + 100);
  text(Inspirado, 600, ejeYCreditos + 200);

  if (ejeYCreditos < -900) {
    ejeYCreditos= 600;
  }
}

void PantallaInstrucciones() {

  image(FondoInstrucciones, 0, 0, 1300, 600);
  image(volver, 50, 50, 50, 50);

  Botones(volver, 50, 50, 52, 52, 50, 100);

  fill(255, 0, 0);
  textSize(100);
  textAlign(CENTER);
  textFont(Font1);
  text(Vaquero, 600, 100 );
  text(Alien, 600, 300);
  text(Vida, 600, 450 );
}

void PantallaJuego () {

  image(Fondo, 0, 0, 1300, 600);
  image(volver, 50, 50, 50, 50);
  Botones(volver, 50, 50, 52, 52, 50, 100);



  EstaQuietoVaquero ();
  EstaQuietoAlien ();

  Disparos();
  SeguimientoDeLaBala();

  DisparosAlien();
  SeguimientoDeLaBalaAlien();

  impacto1();
  impacto2();
  PantallaVictoria();
}

void PantallaVictoria() {

  muerto();

  image(volver, 50, 50, 50, 50);
  Botones(volver, 50, 50, 52, 52, 50, 100);
}
