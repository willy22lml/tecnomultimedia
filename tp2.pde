/*
 tp2
 Kevin Jason Williams
 N° legajo 91377/4
 link video: https://youtu.be/59OvcW_FzOE
 */

boolean blanco, fondo, Union, DentroBoton1, DentroBoton2, DentroBoton3, DentroBoton4, DentroBoton5, DentroBoton6;
int colorR, colorG, colorB, colorRN, colorGN, colorBN; 


int ejeX, velX;

void setup() {
  size(800, 600);
  ejeX=0;
  velX = 1;
  //cambio de color blanco
  colorR=254;
  colorG=255;
  colorB=3; 
  //cambio de color negro
  colorRN=3;
  colorGN=12;
  colorBN=255;
}

void draw() {
  background(0);


  //fondo negro
  if (fondo) {
    background(15);
  } else {
    FondoBarras();
  }


  //llamado de los recMoviles
  ejeX = ejeX + velX;//calculo de movimiento
  fill(254, 255, 3);
  RectMovil(200, 65, 35);
  fill(3, 12, 255);
  RectMovil(350, 65, 35);

  //cambio de color de los recmoviles
  if (blanco) {
    noStroke();
    fill(colorR++, colorG++, colorB+=8);
    RectMovil(200, 65, 35);
    fill(colorRN--, colorGN--, colorBN-=8);
    RectMovil(350, 65, 35);
  }

  //union de los recmoviles
  if (blanco && Union ) {

    fill(color(0, 0, 0, 180));
    RectMovil(235, 65, 115);
  } else if ( Union ) {

    fill(color(255, 0, 0, 150));
    RectMovil(235, 65, 115);
  }

  //llamado de los botones
  botones(200, 25, 215, 56, "Color");
  botones(350, 25, 365, 56, "Fondo");
  botones(500, 25, 515, 56, "Union");
  botones(200, 530, 206, 560, "SinColor");
  botones(350, 530, 351, 560, "SinFondo");
  botones(500, 530, 503, 560, "SinUnion");


  //llamado de las funciones de los botones
  FuncionDeLosBotones();
}//llave draw


void mouseClicked() {
  DentroBoton1 = (mouseX > 200 && mouseX < 200 + 90 && mouseY > 25 && mouseY < 25 + 50);
  DentroBoton2 = (mouseX > 350 && mouseX < 350 + 90 && mouseY > 25 && mouseY < 25 + 50);
  DentroBoton3 = (mouseX > 500 && mouseX < 500 + 90 && mouseY > 25 && mouseY < 25 + 50);
  DentroBoton4 = (mouseX > 200 && mouseX < 200 + 90 && mouseY > 530 && mouseY < 530 + 50);
  DentroBoton5 = (mouseX > 350 && mouseX < 350 + 90 && mouseY > 530 && mouseY < 530 + 50);
  DentroBoton6 = (mouseX > 500 && mouseX < 500 + 90 && mouseY > 530 && mouseY < 530 + 50);
}
