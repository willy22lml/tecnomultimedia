void FuncionImagenes() {
  ////////////////////////////////////////////////////////////////////////                
  //al presionar el boton  "Imagenes"/////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////
  if (imagenes) {
    //reinicio de estado de los botones//
    DentroBoton1 = false;
    DentroBoton2 = false;
    DentroBoton5 = false;
    DentroBoton6=false;
    ///////////////////////////////////
    ejeY=530;
    image(imgSlide, 50, 130, 900, 400);
    image(FondoTransparente, 0, 0, 1000, 600);//img del fondo con cuadrado en png
    image(Nombre, 320, 5, 350, 150);
    image(BotonVerde, 100, 450, 400, 200);
    image(BotonAzul, 500, 450, 400, 200);
    image(BotonSlide2, 900, 280, 100, 100);
    image(BotonSlide3, 0, 280, 100, 100);
    fill(255, 247, 5);//COLOR AMARRILLO.
    textFont(Font1, 25);
    textAlign(CENTER);
    text("Creditos", 410, 590);
    text("Menu", 580, 590);
    text("pagina: Imagenes", 130, 30);
    //al pasar por encima de los botones...
    DentroBoton3 = (mouseX > 100 && mouseX < 100 + 400 && mouseY > 400);
    DentroBoton4 = (mouseX > 500 && mouseX < 500 + 400 && mouseY > 400);
    if ( DentroBoton3) {
      image(BotonVerde, 85, 450, 420, 200);
    }
    if (DentroBoton4) {
      image(BotonAzul, 500, 450, 420, 200);
    }

    //al pasar por encima de los botones del Slide...
    DentroBotonS1 = (mouseX > 900 && mouseX < 900 + 100 && mouseY > 100);
    if (DentroBotonS1) {
      image(BotonSlide1, 890, 270, 130, 130);
    }
    DentroBotonS2 = (mouseX > 0 && mouseX < 0 + 100 && mouseY > 100);
    if (DentroBotonS2) {
      image(BotonSlide4, -20, 220, 180, 180);
    }
  }//llave if(imagenes)
}
