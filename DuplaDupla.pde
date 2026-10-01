class Dupla {
  float x;
  float y;

  Dupla(float x_, float y_) {
    x = x_;
    y = y_;
  }

  void sumar(Dupla d) {
    x += d.x;
    y += d.y;
  }
}
