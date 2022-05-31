boolean blanco, fondo, Union, DentroBoton1, DentroBoton2, DentroBoton3, DentroBoton4, DentroBoton5, DentroBoton6;


void setup() {
  size(800, 600);
  ejeX=0;
  velX = 1;
}

void draw() {
  background(0);

  //fondo negro
  if (fondo) {
    background(0);
  } else {
    FondoBarras();
  }


  //llamado de los recMoviles
  fill(254, 255, 3);
  RectMovil(200, 65, 35);
  fill(3, 12, 255);
  RectMovil(350, 65, 35);

  //cambio de color de los recmoviles
  if (blanco) {
    fill(255);
    RectMovil(200, 65, 35);
    fill(0);
    RectMovil(350, 65, 35);
    if (Union) {
      fill(color(0, 0, 0, 150));
      RectMovil(235, 65, 115);
    }
  }
  //union de los recmoviles
  if (Union) {
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
