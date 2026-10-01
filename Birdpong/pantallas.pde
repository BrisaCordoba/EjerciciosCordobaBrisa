

void dibujarMenuInicio() {
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(40);
  text("MENÚ DE JUEGOS", width / 2, 120);

  textSize(22);
  text("Presiona [ 1 ] para FLAPPY BIRD", width / 2, 280);
  text("Presiona [ 2 ] para PONG", width / 2, 350);
}

void dibujarGameOver() {
  fill(255, 50, 50);
  textAlign(CENTER, CENTER);
  textSize(50);
  text("¡GAME OVER!", width / 2, 200);

  fill(255);
  textSize(20);
  text("Presiona ESPACIO para volver al Menú Principal", width / 2, 380);
}

void iniciarFlappy() {
  tubos = new ArrayList<DuplaDeTubos>();
  bird = new Circulo(100, height / 2, 30);
  estado = JUEGO_FLAPPY;
  juegoSeleccionado = 1;
}

void iniciarPong() {
  pelotaPong = new Circulo(width / 2, height / 2, 20, true);
  j1 = new Cuadrado(sep, height / 2, 20, 80, true);
  j2 = new Cuadrado(width - sep, height / 2, 20, 80, true);
  estado = JUEGO_PONG;
  juegoSeleccionado = 2;
}


void actualizarYMostrarFlappy() {
  background(255);

  float medioY = height / 2.0;
  stroke(200);
  line(0, medioY, width, medioY);

  if (tubos.size() == 0 || tubos.get(tubos.size() - 1).getX() < width - 250) {
    tubos.add(new DuplaDeTubos(width, 140));
  }

  bird.addFuerza(gravedad);
  bird.moverFisica();

  borrarTubosFlappy();

  boolean huboColision = false;

  for (DuplaDeTubos d : tubos) {
    d.mover();
    d.mostrar();

    if (d.colisionaCon(bird)) {
      huboColision = true;
    }
  }

  if (huboColision || bird.pos.y < 0 || bird.pos.y > height) {
    estado = GAME_OVER;
  }

  bird.mostrar();
}

void borrarTubosFlappy() {
  for (int i = tubos.size() - 1; i >= 0; i--) {
    if (tubos.get(i).estaFueraDePantalla()) {
      tubos.remove(i);
    }
  }
}

void actualizarYMostrarPong() {
  fill(0, 40);
  rectMode(CORNER);
  rect(0, 0, width, height);

  pelotaPong.moverPong();
  pelotaPong.contenerEnPantalla();

  j1.moverPaleta(is_w, is_s);
  j2.moverPaleta(is_o, is_l);

  if (j1.colisionaConCirculo(pelotaPong.pos, pelotaPong.r / 2)) {
    pelotaPong.rebotarX();
    pelotaPong.separarDe(j1.pos);
  }

  if (j2.colisionaConCirculo(pelotaPong.pos, pelotaPong.r / 2)) {
    pelotaPong.rebotarX();
    pelotaPong.separarDe(j2.pos);
  }

  if (pelotaPong.pos.x < 0) {
    j2.puntaje++;
    pelotaPong = new Circulo(width / 2, height / 2, 20, true);
  }
  if (pelotaPong.pos.x > width) {
    j1.puntaje++;
    pelotaPong = new Circulo(width / 2, height / 2, 20, true);
  }

  mostrarPuntajePong();
  pelotaPong.mostrar();
  j1.mostrar();
  j2.mostrar();
}

void mostrarPuntajePong() {
  fill(255, 30);
  textSize(120);
  textAlign(CENTER, CENTER);
  text(j1.puntaje, width / 3, height / 2);
  text(j2.puntaje, 2 * width / 3, height / 2);
}
