PImage Fondo, FondoTransparente, Nombre, BotonVerde, BotonAzul, imgSlide, Puntero, Decora1, Decora2;
int ejeY, NumImg, MaxImg;
boolean DentroBoton1, DentroBoton2, DentroBoton3, DentroBoton4, DentroBoton5, DentroBoton6, creditos, imagenes, menu;
String Titulo, Direccion, Distribuidora, Productora, Animacion, Musica, Reparto, EfectosVisuales;


void setup() {
  size(1000, 600);
  Fondo = loadImage("Fondo.jpg");
  FondoTransparente = loadImage("Fondo.png");
  Nombre = loadImage("Nombre.png");
  BotonVerde = loadImage("BotonVerde.png");
  BotonAzul = loadImage("BotonAzul.png");
  MaxImg=9;
  NumImg=1;
  imgSlide = loadImage("img0"+NumImg+".jpg");
  Puntero = loadImage("puntero.png");
  Decora1 = loadImage("decora1.png");
  Decora2 = loadImage("decora2.png");
  ejeY = 530;
  creditos= false;
  imagenes = false;
  //menu = false;
  Titulo= "Star Wars";
  Direccion= "Direccion por George Lucas";
  Distribuidora="Distribuidora\n 20th Century Fox";
  Productora= "Productora \n Twentieth Century-Fox Film Corporation, Lucasfilm";
  Animacion="Animación \n Chris Casady, Diana Wilson, Jonathan Seay, \n Lyn Gerry, Michael Ross, Peter Kuran, Phil Tippett";
  Musica="Música \n John Williams";
  Reparto = "Reparto \n Mark Hamill, Harrison Ford, Carrie Fisher, \n Peter Cushing, Alec Guinness, Anthony Daniels, \n Peter Mayhew, David Prowse, James Earl Jones, \n Phil Brown, Shelagh Fraser, Jack Purvis, \n Alex McCrindle, Eddie Byrne, Drewe Henley, \n Denis Lawson, Garrick Hagon, Jack Klaff, \n William Hootkins, Angus MacInnes, Jeremy Sinden, \n Graham Ashley, Don Henderson, \n Richard LeParmentier, Leslie Schofield";
  EfectosVisuales= "Efectos visuales \n Aaron Haye, Adam Beckett, Al Bailey, \n Alan Bailey, Alex Seiden, Alvah J. Miller, \n Amelia Chenoweth, Angela Leaper, Bert Terreri, \n Beth D'Amato, Bill Mather, Brian Knep,\n Bruce Green, Bruce Logan, Bruce Nicholson, \n Bruce Vecchitto, Caleb Aschkynazo, Carol Hayden, \n Chad Taylor, Chris Bushman, Christopher Townsend, \n Cindy Isman, Colin Cantwell, Connie McCrum, \n Corey Rosen, Damian Steel, Dan McNamara, \n Danny Taylor,  Dave Carson, David Beasley, \n David Berry, David Deuber, David Dozoretz, \n David Jones, David McCue, David Robman, \n David Scott, David Tanaka, \n Dennis Muren, Don Trumbull, \n Donna Tracy, Doug Jones, Douglas Barnett, \n Douglas Smith, Eldon Rickman, Eleanor Porter, \n Fon Davis, Forest Key, Fred Meyers, Gary Meyer, \n Gary Smith, George E. Mather, Grant Guenin, \n Grant McCune, Greg Auer, Greg Maloney,  \n Gregory Jein, Guy Hudson, \n Harrison Ellenshaw, Howard Gersh, \n James Hagedorn, James Shourt, James Tooley, \n James Van Trees Jr., \n Jeff Wells, Jennifer Law-Stump, Jerry Greenwood, \n Jim Wells, Joanne Hafner, Jodie Maier, \n Joe Johnston, Joe Letteri, Joe Murray, \n Joe Viskocil, John Andrew Berton Jr.,\n John C. Moulds, John Dykstra, John Knoll, \n Jon Berg, Jonathan Erland, Julie Adrianson-Neary,\n Karen Ansel, Kela Hicks, Ken Ralston, \n Kerry Nordquist, Lam Van To, Lisa Todd, \n Lon Tinney, Lorne Peterson, Margaret B. Lynch, \n Mark Austin, Mark Kline, Mark Moore, \n Mary M. Lind,  Mary Miramontez, Masaaki Norihoro, \n Matthew Hendershot, Nancy Luckoff, etc.";
}

void draw() {

  //estetica del programa//
  image(Fondo, 0, 0, 1000, 600);
  image(Nombre, 260, 100);
  image(BotonVerde, 100, 400, 400, 200);
  image(BotonAzul, 500, 400, 400, 200);
  textSize(30);
  fill(255, 247, 5);//color amarillo
  text("Imagenes", 300, 550);
  text("Creditos", 550, 550);
  text("pagina: Menu", 10, 30);

  /////////////////////////////////
  // funcionalidades del programa//
  /////////////////////////////////


  //al pasar por encima de los botones...
  DentroBoton1 = (mouseX > 100 && mouseX < 100 + 400 && mouseY > 400);
  DentroBoton2 = (mouseX > 500 && mouseX < 500 + 400 && mouseY > 400);

  if ( DentroBoton1 ) {
    image(BotonVerde, 100, 400, 420, 200);
  }
  if (DentroBoton2) {
    image(BotonAzul, 500, 400, 420, 200);
  }

  ////////////////////////////////////////////////////////////////////////                
  //al presionar el boton  "creditos"/////////////////////////////////////
  ////////////////////////////////////////////////////////////////////////
  if (creditos) {
    rect(50, 130, 900, 450);
    image(Decora1, 800, 370,200,200);
    image(Decora2, -20, 370, 200, 200);
    fill(0);
    textAlign(CENTER);
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
    image(FondoTransparente, 0, 0, 1000, 600);//img del fondo con cuadrado en png
    image(Nombre, 320, 5, 350, 150);
    image(BotonVerde, 100, 450, 400, 200);
    image(BotonAzul, 500, 450, 400, 200);
    fill(255, 247, 5);//COLOR AMARRILLO.
    text("Menu", 430, 590);
    text("Imagenes", 600, 590);
    text("pagina: Creditos", 130, 30);
    //al pasar por encima de los botones...
    DentroBoton5 = (mouseX > 100 && mouseX < 100 + 400 && mouseY > 400);
    DentroBoton6 = (mouseX > 500 && mouseX < 500 + 400 && mouseY > 400);
    if (DentroBoton5) {
      image(BotonVerde, 100, 450, 420, 200);
    }
    if (DentroBoton6) {
      image(BotonAzul, 500, 450, 420, 200);
    }
  }//llave if(creditos)

  ///////////////////////////////////////////////////////
  ////al presionar el boton  "imagenes"//////////////////
  ///////////////////////////////////////////////////////

  if (imagenes) {
    rect(50, 130, 900, 450);
    image(imgSlide, 50, 130,900, 400);
    image(FondoTransparente, 0, 0, 1000, 600);//img del fondo con cuadrado en png
    image(Nombre, 320, 5, 350, 150);
    image(BotonVerde, 100, 450, 400, 200);
    image(BotonAzul, 500, 450, 400, 200);
    fill(255, 247, 5);//COLOR AMARRILLO.
    text("Creditos", 350, 590);
    text("Menu", 540, 590);
    text("pagina: Imagenes", 10, 30);
    //al pasar por encima de los botones...
    DentroBoton3 = (mouseX > 100 && mouseX < 100 + 400 && mouseY > 400);
    DentroBoton4 = (mouseX > 500 && mouseX < 500 + 400 && mouseY > 400);
    if ( DentroBoton3) {
      image(BotonVerde, 100, 450, 420, 200);
    }
    if (DentroBoton4) {
      image(BotonAzul, 500, 450, 420, 200);
    }
  }//llave if(imagenes)

  //////////////////////////////////////////////////////
  ////al presionar el boton "menu"/////////////////////
  //////////////////////////////////////////////////////

  if (menu) {
    image(Fondo, 0, 0, 1000, 600);
    image(Nombre, 320, 5, 350, 150);
    background(255);
    image(BotonVerde, 100, 450, 400, 200);
    image(BotonAzul, 500, 450, 400, 200);
    fill(255, 247, 5);//COLOR AMARRILLO.
    text("Creditos", 350, 590);
    text("Imagenes", 540, 590);
    text("pagina: Menu", 0, 30);
    //al pasar por encima de los botones...
    DentroBoton1 = (mouseX > 100 && mouseX < 100 + 400 && mouseY > 400);
    DentroBoton2 = (mouseX > 500 && mouseX < 500 + 400 && mouseY > 400);

    if ( DentroBoton1 ) {
      image(BotonVerde, 100, 400, 420, 200);
    }
    if (DentroBoton2) {
      image(BotonAzul, 500, 400, 420, 200);
    }
  }//llave if(menu)
  
  image(Puntero, mouseX , mouseY, 100, 100);
  }//llave draw//

  /////////////////////////////////////////////////////////
  //////////FIN///////////////////////////////////////////
  ////////////////////////////////////////////////////////


//al presionar los botones...
void mouseClicked() {
  if (DentroBoton1) {//boton img
    image(BotonVerde, 100, 400, 420, 200); 
    imagenes = true;
    creditos = false;
    //menu= false;
    if (DentroBoton3) { //boton creditos
      image(BotonVerde, 100, 500, 420, 200);
      DentroBoton1 =false ;
      creditos = true;
      //menu = false;
      imagenes = false;
    } else if (DentroBoton4) { //boton menu
      image(BotonAzul, 100, 400, 420, 200);
      //menu = true;
      creditos = false;
      imagenes = false;
    }
  }

  if (DentroBoton2) { //boton creditos
    image(BotonAzul, 500, 400, 420, 200);
    creditos = true;
    //menu= false;
    imagenes = false;

    if (DentroBoton5) {
      image(BotonVerde, 100, 400, 420, 200);
      //menu = false;
      creditos = false;
      imagenes = false;
    } else if (DentroBoton6) {
      image(BotonAzul, 100, 400, 420, 200);
      imagenes= true;
      creditos = false;
      //menu = false;
    }
  }

///////////////////////////////////////////
///////////////Slide de img////////////////
///////////////////////////////////////////
 if (mouseX>width*0.9) {
    NumImg++;
    if (NumImg == MaxImg+1) {
      NumImg=1;
    }
  } else if (mouseX<width*0.1) {
    NumImg--;
    if (NumImg ==0) {
      NumImg=MaxImg;
    }
  }
  imgSlide = loadImage("img0"+NumImg+".jpg"); 
///////////////////////////////////////////////
///////////////////////////////////////////////
  
}//llave mouseClicked
