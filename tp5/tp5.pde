/*
 tp5
 Kevin Jason Williams
 N° legajo 91377/4
 link video: https://youtu.be/gKC1RLTXM5k
*/

import processing.sound.*;
SoundFile musicaMenu;

Menu menu;

void setup() {
  size(1000, 600);

  menu = new Menu();


  musicaMenu = new SoundFile(this, "musica/musicaMenu.wav");
  musicaMenu.loop();
}

void draw() {
  menu.dibujar();
}

void mouseClicked() {
  menu.click_Botones();
}
