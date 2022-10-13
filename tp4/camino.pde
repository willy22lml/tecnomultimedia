class Camino {
//*****Atributos********//
  PImage Camino;

//*****Constructor********//
  Camino() {
    Camino =  loadImage("camino.png");
  }
  
//*****Metodo********//
  void Dibujar() {
    image(Camino, 455, 300, 350, 380);
  }
}
