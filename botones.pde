//creacion de botones
void botones(int PosX, int PosY, int PosX_Tex, int PosY_Tex, String text) {
  fill(random(255), random(255), random(255));
  rect(PosX, PosY, 90, 50);
  //TEXTO BOTONES//
  textSize(20);
  //textAlign(CENTER);
  fill(0);
  text(text, PosX_Tex, PosY_Tex);
}

//funcion de los botones
void FuncionDeLosBotones() {
  
  if ( DentroBoton4 ) { //boton "sin color"
    blanco =true;
  } else if ( DentroBoton1 ) { //boton "color"
    blanco =false;
  }else if (DentroBoton5) { //boton "sin fondo"
    fondo = true;
  } else if ( DentroBoton2 ) { //boton "fondo"
    fondo = false;
  }else if (DentroBoton3) { //boton "union"
    Union = true;
  } else if (DentroBoton6) { //boton "sin union"
    Union = false;
  }
}//lave funcion botones
