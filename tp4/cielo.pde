class Cielo {
//*****Atributos********//
  int CieloX, CieloY, CieloAncho, CieloAlto;
  PImage Cielo;
  
//*****Constructor********//
  Cielo() {
    CieloX = 0;
    CieloY = 0;
    CieloAncho= 1000;
    CieloAlto = 600;
    Cielo = loadImage("cielo.jpg");
  }

//*****Metodo********//
  void Dibujar() {
    image( Cielo, CieloX, CieloY, CieloAncho, CieloAlto );
  }
}
