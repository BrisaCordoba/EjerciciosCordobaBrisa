class DuplaDeTubos {
  Cuadrado tuboArriba;
  Cuadrado tuboAbajo;
  float velocidadX = -3;

  DuplaDeTubos(float x, float gap) {
    float altoArriba = random(50, (height / 2.0) - 20);
    
    tuboArriba = new Cuadrado(x, 0, 60, altoArriba);
    tuboAbajo = new Cuadrado(x, altoArriba + gap, 60, height - (altoArriba + gap));
  }

  void mover() {
    tuboArriba.pos.x += velocidadX;
    tuboAbajo.pos.x += velocidadX;
  }

  void mostrar() {
    tuboArriba.mostrar();
    tuboAbajo.mostrar();
  }

  boolean estaFueraDePantalla() {
    return tuboArriba.pos.x < -70;
  }

  float getX() {
    return tuboArriba.pos.x;
  }

  boolean colisionaCon(Circulo c) {
    return tuboArriba.colisionaConCirculo(c.pos, c.r / 2) || 
           tuboAbajo.colisionaConCirculo(c.pos, c.r / 2);
  }
}
