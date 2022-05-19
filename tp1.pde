/*
tp1
 Kevin Jason Williams
 N° legajo 91377/4
*/
PImage Fondo, FondoTransparente, Nombre, BotonVerde, BotonAzul, imgSlide, Puntero, Decora1, Decora2, BotonSlide1, BotonSlide2, BotonSlide3, BotonSlide4;
PFont Font1, Font2;
int ejeY, NumImg, MaxImg;
boolean DentroBoton1, DentroBoton2, DentroBoton3, DentroBoton4, DentroBoton5, DentroBoton6, creditos, imagenes, menu, DentroBotonS1, DentroBotonS2;
String Titulo, Direccion, Distribuidora, Productora, Animacion, Musica, Reparto, EfectosVisuales;


void setup() {
  size(1000, 600);
  Font1 = createFont("IportFont.ttf",30);
  Font2 = createFont("IportFont2.ttf",30);
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
  BotonSlide1 = loadImage("BotonD.png");
  BotonSlide2 = loadImage("BotonD2.png");
  BotonSlide3 = loadImage("BotonD3.png");
  BotonSlide4 = loadImage("BotonD4.png");
  ejeY = 530;// posicion de los creditos
  creditos= false;
  imagenes = false;
  menu = false;
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
  textFont(Font1);
  textSize(30);
  textAlign(CENTER);
  fill(255, 247, 5);//color amarillo
  text("Imagenes", 400, 550);
  text("Creditos", 600, 550);
  text("pagina:Menu", 130, 30);

  /////////////////////////////////
  // funcionalidades del programa//
  /////////////////////////////////

  //al pasar por encima de los botones...
  DentroBoton1 = (mouseX > 100 && mouseX < 100 + 400 && mouseY > 400);
  DentroBoton2 = (mouseX > 500 && mouseX < 500 + 400 && mouseY > 400);

  if ( DentroBoton1 ) {
    image(BotonVerde, 85, 400, 420, 200);
  }
  if (DentroBoton2) {
    image(BotonAzul, 500, 400, 420, 200);
  }

  ////al presionar el boton  "creditos"//////////////////
  FuncionCreditos();

  ////al presionar el boton  "imagenes"//////////////////
  FuncionImagenes();
  
/////puntero sable de luz////////
  noCursor();
  image(Puntero, mouseX-30, mouseY-30, 100, 100);
}//llave draw//
//////////FIN///////////////////////////////////////////

//al presionar los botones...
void mouseClicked() {
  //////Botones/////////
  FuncionBotones();
  
  //////Slide//////////////////
  SlideDeImg ();
}//llave mouseClicked
