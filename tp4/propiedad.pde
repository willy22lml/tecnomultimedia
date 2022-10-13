class Propiedad {
//*****Objetos********//
  Paisaje paisaje;
  Casa casa;
  Camino camino;
  Persona persona;


//*****Constructor********//
  Propiedad() {
    paisaje = new Paisaje();
    casa = new Casa();
    camino = new Camino();
    persona = new Persona();
  }

//*****Metodo********//
  void Dibujar() {
    paisaje.Dibujar();
    casa.Dibujar();
    camino.Dibujar();
    persona.Dibujar();
  }
}
