class Paisaje {
//*****Objetos********//
  Cielo cielo;
  Sol sol;
  Arbol arbol;
  Pasto pasto;

//*****Constructor********//
  Paisaje() { 
    cielo = new Cielo();
    sol = new Sol();
    pasto = new Pasto();
    arbol = new Arbol();
  }
  
//*****Metodo********//
  void Dibujar() {
    cielo.Dibujar();
    sol.Dibujar();
    pasto.Dibujar();
    arbol.Dibujar();
  }
}
