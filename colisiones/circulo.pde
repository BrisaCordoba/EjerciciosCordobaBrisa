class Circulo {
  PVector CirculoPos;
  PVector CirculoVel;
  float radio;

  Circulo() {
    CirculoPos = new PVector(75, 25);
    CirculoVel = new PVector(2, 8);
    radio = 20;
  }

  void mover() {
 
    if (CirculoPos.x - radio <= 0) {
      CirculoVel.x *= -1;
    } else if (CirculoPos.x + radio >= width) {
      CirculoVel.x *= -1;
    } else if (CirculoPos.y - radio <= 0) {
      CirculoVel.y *= -1;
    } else if (CirculoPos.y + radio >= height) {
      CirculoVel.y *= -1;
    }
        CirculoPos.add(CirculoVel);
  }

  void mostrar() {
    fill(255, 200, 0);
    ellipse(CirculoPos.x, CirculoPos.y, radio * 2, radio * 2);
  }
}
