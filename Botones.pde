
void Botones(PImage boton, int X, int Y, int TAMx, int TAMy, int Parametro1, int Parametro2) {


  if (mouseX > X  && mouseX < X + Parametro1 && mouseY > Y && mouseY < Parametro2) {

    image(boton, X, Y, TAMx, TAMy);
  }
}


void BOTONES() {
  boolean boton1 = (mouseX > 490  && mouseX < 490 + 270 && mouseY > 500 && mouseY < 580);
  boolean boton2 = (mouseX > 100  && mouseX < 100 + 270 && mouseY > 500 && mouseY < 580);
  boolean boton3 = (mouseX > 850  && mouseX < 850 + 270 && mouseY > 500 && mouseY < 580);
  boolean boton4 = (mouseX > 50  && mouseX < 50 + 50 && mouseY > 50 && mouseY < 100);

  if (boton1 == true) {

    JugarSi =  true;
    MenuSi = false;
    CreditosSi = false;
    InstruccionesSi = false;
  } else if (boton2 == true ) {

    CreditosSi = true;
    MenuSi = false;
    InstruccionesSi = false;
    JugarSi = false;
  } else if (boton3 == true) {

    InstruccionesSi =true;
    MenuSi = false;
    CreditosSi = false;
    JugarSi = false;
  } else if (boton4 == true) {

    MenuSi =true;
    CreditosSi = false;
    InstruccionesSi = false;
    JugarSi = false;
  }
}
