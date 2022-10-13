class Sol{
//*****Atributos********//
  int SolX, SolY, SolAncho, SolAlto;
  PImage Sol;

//*****Costructor********//
  Sol() {
    SolX = 0;
    SolY = 0;
    SolAncho= 300;
    SolAlto = 300;
    Sol = loadImage("sol.png");
  }
  
//*****Metodo********//
  void Dibujar() {
    image( Sol, SolX, SolY, SolAncho, SolAlto );
  }
}
