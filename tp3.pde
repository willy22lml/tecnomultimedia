/*
 tp3
 Kevin Jason Williams
 N° legajo 91377/4
 link video: https://youtu.be/veAfY_GgQU0
 */
void setup() {
  size(1200, 600);

  CargaDeImgMenu();
  CargaDeImgVaquero ();
  CargaDeImgAlien();
}

void draw() {

  if ( MenuSi == true) {

    PantallaMenu();
  } else if (CreditosSi == true) {

    PantallaCreditos();
  } else if (InstruccionesSi == true) {

    PantallaInstrucciones();
  } else if (JugarSi == true) {

    PantallaJuego ();
  }
}


void mouseClicked() {

  BOTONES();
}




void keyPressed() {

  MovimientosVaquero();
  MovimientosAlien();
}
