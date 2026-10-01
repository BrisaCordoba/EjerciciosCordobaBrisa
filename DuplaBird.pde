class Bird {
  Dupla pos;
  Dupla vel;
  Dupla gravedad;
  float tam;

  Bird() {
    pos = new Dupla(50, height/2);
    vel = new Dupla(0, 0);
    gravedad = new Dupla(0, 0.5);
    tam = 20;
  }

  void mover() {
    vel.sumar(gravedad); 
    pos.sumar(vel);
  }

  void saltar() {
    vel.y = -8;
  }

  void mostrar() {
    fill(255, 200, 0);
    ellipse(pos.x, pos.y, tam, tam);
  }
}
