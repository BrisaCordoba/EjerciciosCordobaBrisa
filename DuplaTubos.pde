class Tubos {
  Dupla pos;
  float ancho; 
  float sup;
  float inf;
  float espacio;
  float minimo;
  float vel;

  Tubos() {
    ancho = 50;
    pos = new Dupla(width, 0);
    espacio = 130;
    minimo = 50;

    sup = random(minimo, height - espacio - minimo);
    inf = height - (sup + espacio);
    vel = 3;
  }

  void mover() {
    pos.x -= vel;
  }

  void mostrar() {
    fill(0, 128, 0);
    rect(pos.x, 0, ancho, sup);
    rect(pos.x, height - inf, ancho, inf);
  }

  boolean salio() {
    if (pos.x + ancho < 0) {
      return true;
    } else {
      return false;
    }
  }

  boolean colision(Bird b) {
    float radio = b.tam / 2;

    if (b.pos.x + radio > pos.x) {
      if (b.pos.x - radio < pos.x + ancho) {
        if (b.pos.y - radio < sup) {
          return true;
        }
        if (b.pos.y + radio > height - inf) {
          return true;
        }
      }
    }
    return false;
  }
}
