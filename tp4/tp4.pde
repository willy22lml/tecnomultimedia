/*
 tp4
 Kevin Jason Williams
 N° legajo 91377/4
 link video: https://youtu.be/E1aCNhBPJoM
 */
Paisaje paisaje;
Casa casa;
Persona persona;

void setup() {
  size(1000, 600);
  paisaje = new Paisaje();
  casa = new Casa();
  persona = new Persona();
}

void draw() {
  paisaje.Dibujar();
  casa.Dibujar();
  persona.Dibujar();
}

void keyPressed() {
  persona.Camina();
}
