void FuncionCreditos() {
  ////////////////////////////////////////////////////////////////////////                
  //al presionar el boton  "creditos"/////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////
  if (creditos) {
    //reinicio de estado de los botones//
    DentroBoton1 = false;
    DentroBoton2 = false;
    DentroBoton3 = false; 
    DentroBoton4 =false;
    ////////////////////////////////////

    background(255, 247, 5);
    image(Decora1, 800, 370, 200, 200);
    image(Decora2, -20, 370, 200, 200);
    fill(0);
    textAlign(CENTER);
    textFont(Font2, 25);
    ejeY--;
    //CREDITOS//
    text(Titulo, 500, ejeY);
    text(Direccion, 500, ejeY+100);
    text(Distribuidora, 500, ejeY+200);
    text(Productora, 500, ejeY+350);
    text(Animacion, 500, ejeY+500);
    text(Musica, 500, ejeY+700);
    text(Reparto, 500, ejeY+850); 
    text(EfectosVisuales, 500, ejeY+1400);
    //FIN CREDITOS//
    image(FondoTransparente, 0, 0, 1020, 600);//img del fondo con cuadrado en png
    image(Nombre, 320, 5, 350, 150);
    image(BotonVerde, 100, 450, 400, 200);
    image(BotonAzul, 500, 450, 400, 200);
    textFont(Font1, 25);
    fill(255, 247, 5);//COLOR AMARRILLO.
    text("Menu", 430, 590);
    text("Imagenes", 600, 590);
    text("pagina: Creditos", 130, 30);
    //al pasar por encima de los botones...
    DentroBoton5 = (mouseX > 100 && mouseX < 100 + 400 && mouseY > 400);
    DentroBoton6 = (mouseX > 500 && mouseX < 500 + 400 && mouseY > 400);
    if (DentroBoton5) {
      image(BotonVerde, 85, 450, 420, 200);
    }
    if (DentroBoton6) {
      image(BotonAzul, 500, 450, 420, 200);
    }
    ///Reinicio de los creditos///
    if (ejeY< -2500){
      ejeY= 530;
    /////////////////////////////
    
    }
  }//llave if(creditos)
}
