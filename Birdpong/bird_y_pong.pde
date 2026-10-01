
final int INICIO = 0;
final int JUEGO_FLAPPY = 1;
final int JUEGO_PONG = 2;
final int GAME_OVER = 3;

int estado = INICIO;
int juegoSeleccionado = 0;


ArrayList<DuplaDeTubos> tubos;
Circulo bird;
PVector gravedad = new PVector(0, 0.4);


Circulo pelotaPong;
Cuadrado j1, j2;
int sep = 30;
boolean is_w = false, is_s = false, is_o = false, is_l = false;


void setup() {
  size(800, 600);
}

void draw() {
  background(30);

  if (estado == INICIO) {
    dibujarMenuInicio();
  } else if (estado == JUEGO_FLAPPY) {
    actualizarYMostrarFlappy();
  } else if (estado == JUEGO_PONG) {
    actualizarYMostrarPong();
  } else if (estado == GAME_OVER) {
    dibujarGameOver();
  }
}

// =========================================================
// ENTRADAS DE TECLADO
// =========================================================

void keyPressed() {
  if (estado == INICIO) {
    if (key == '1') iniciarFlappy();
    if (key == '2') iniciarPong();
  } 
  else if (estado == JUEGO_FLAPPY) {
    if (key == ' ') {
      bird.vel.y = 0;
      bird.addFuerza(new PVector(0, -7));
    }
  } 
  else if (estado == JUEGO_PONG) {
    if (key == 'w' || key == 'W') is_w = true;
    if (key == 's' || key == 'S') is_s = true;
    if (key == 'o' || key == 'O') is_o = true;
    if (key == 'l' || key == 'L') is_l = true;
  } 
  else if (estado == GAME_OVER) {
    if (key == ' ') estado = INICIO;
  }
}

void keyReleased() {
  if (estado == JUEGO_PONG) {
    if (key == 'w' || key == 'W') is_w = false;
    if (key == 's' || key == 'S') is_s = false;
    if (key == 'o' || key == 'O') is_o = false;
    if (key == 'l' || key == 'L') is_l = false;
  }
}
