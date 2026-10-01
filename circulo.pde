class Circulo {
  PVector pos;
  PVector vel;
  PVector acel;
  float r;

  Circulo(float x, float y, float tam) {
    pos = new PVector(x, y);
    vel = new PVector(0, 0);
    acel = new PVector(0, 0);
    this.r = tam;
  }

 
  Circulo(float x, float y, float tam, boolean esPong) {
    pos = new PVector(x, y);
    vel = new PVector(random(10) < 5 ? 3 : -3, random(10) < 5 ? 3 : -3);
    acel = new PVector(0, 0);
    this.r = tam;
  }

  void mostrar() {
    noStroke();
    fill(0);
    ellipse(pos.x, pos.y, r, r);
  }

  void addFuerza(PVector f) {
    acel.add(f);
  }

  void moverFisica() {
    vel.add(acel);
    vel.y = constrain(vel.y, -8, 8);
    pos.add(vel);
    acel.mult(0);
  }

  void moverPong() {
    vel.add(acel);
    acel.mult(0);
    pos.add(vel);
  }

  void contenerEnPantalla() {
    if (pos.y > height || pos.y < 0) {
      vel.y *= -1;
    }
  }

  void rebotarX() {
    vel.x *= -1;
  }

  void separarDe(PVector otraPos) {
    PVector f = otraPos.copy();
    f.sub(pos);
    f.normalize();
    f.mult(-1);
    acel.add(f);
  }
}
