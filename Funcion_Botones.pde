void FuncionBotones(){
  
if (DentroBoton1) {//boton img
    image(BotonVerde, 100, 400, 420, 200); 
    imagenes = true;
  } else  if (DentroBoton2) { //boton creditos
    image(BotonAzul, 500, 400, 420, 200);
    creditos = true;
  } else  if (DentroBoton3) { //boton creditos dentro pantalla img
    image(BotonVerde, 100, 450, 420, 200);
    creditos = true;
    imagenes = false;
  }else if (DentroBoton4) { //boton menu dentro pantalla img
    image(BotonAzul, 500, 450, 420, 200);
    imagenes = false;
  } else if (DentroBoton5) { //dentro pantalla crditos
    image(BotonVerde, 100, 450, 420, 200);
    creditos = false;
    imagenes = false;
  }else if (DentroBoton6) { //boton img pantalla creditos
    image(BotonAzul, 500, 450, 420, 200); 
    imagenes = true;
    creditos = false;
  } 



}
