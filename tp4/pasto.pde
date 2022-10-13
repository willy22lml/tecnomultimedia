class Pasto {
//*****Atributos********//
  int PastoX, PastoY, PastoAncho, PastoAlto;
  PImage pasto;
 
//*****Constructor********//
  Pasto() {
    PastoX = 0;
    PastoY = 200;
    PastoAncho= 1000;
    PastoAlto = 400;
    pasto = loadImage("pasto.png");
  }
}
//*****Metodo********//
  void Dibujar() {
    image(pasto, PastoX, PastoY, PastoAncho, PastoAlto);
  }
}
