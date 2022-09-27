class Paisaje {
  int CieloX, CieloY, CieloAncho, CieloAlto;
  int SolX, SolY, SolAncho, SolAlto;
  int PastoX, PastoY, PastoAncho, PastoAlto;
  PImage Arbol;
  boolean Noche;

  Paisaje() {
    CieloX = 0;
    CieloY = 0;
    CieloAncho= 1000;
    CieloAlto = 300;
    SolX = 100;
    SolY = 50;
    SolAncho= 300;
    SolAlto = 300;
    PastoX = 0;
    PastoY = 300;
    PastoAncho= 1000;
    PastoAlto = 300;
    Arbol = loadImage("arbol.png");
    Noche = false;
  }

  void Dibujar() {
    Cielo();
    Sol();
    Pasto();
    Arbol();
  }

  void Cielo() {
    fill(28, 155, 255);
    noStroke();
    rect(CieloX, CieloY, CieloAncho, CieloAlto);
  }

  void Sol() {
    fill(250, 255, 0);
    noStroke();
    ellipse(SolX, SolY, SolAncho, SolAlto);
  }


  void Pasto() {
    fill(28, 255, 0);
    noStroke();
    rect(PastoX, PastoY, PastoAncho, PastoAlto);
  }

  void Arbol() {
    image(Arbol, 50, 150, 300, 300 );
  }
}
