class Casa {
  int MuroX, MuroY, MuroAncho, MuroAlto;
  int VentanaX, VentanaY, VentanaAncho, VentanaAlto;
  int PuertaX, PuertaY, PuertaAncho, PuertaAlto;
  int TechoX, TechoY, TechoAncho, TechoAlto;
  PImage Camino;

  Casa() {
    MuroX = 600;
    MuroY = 150;
    MuroAncho= 300;
    MuroAlto = 150;
    VentanaAncho= 50;
    VentanaAlto = 50;
    PuertaX = 730;
    PuertaY = 200;
    PuertaAncho= 50;
    PuertaAlto = 100;
    TechoX = 0;
    TechoY = 0;
    TechoAncho= 1000;
    TechoAlto = 300;
    Camino =  loadImage("camino.png");
  }

  void Dibujar() {
    Muro();
    Ventana(650, 200);
    Ventana(810, 200);
    Puerta();
    Techo();
    Camino();
  }

  void Muro() {
    fill(211, 234, 142);
    noStroke();
    rect(MuroX, MuroY, MuroAncho, MuroAlto);
  }

  void Ventana(int VentanaX, int VentanaY) {
    fill(131, 232, 212);
    stroke(1);
    rect(VentanaX, VentanaY, VentanaAncho, VentanaAlto);
    line(675, 200, 675, 250);
    line(650, 225, 700, 225);
    line(835, 200, 835, 250);
    line(810, 225, 860, 225);
  }

  void Puerta() {
    fill(121, 52, 6);
    noStroke();
    rect(PuertaX, PuertaY, PuertaAncho, PuertaAlto);
  }

  void Techo() {
    fill(198, 36, 36);
    noStroke();
    triangle(600, 150, 900, 150, 750, 60 );
  }

  void Camino() {
    image(Camino, 455, 270, 350, 380);
  }
}
