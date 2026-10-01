class Cuadrado {
  PVector pos;
  float w, h;
  int puntaje = 0;
  boolean esPaleta = false;


  Cuadrado(float x, float y, float w, float h) {
    pos = new PVector(x, y);
    this.w = w;
    this.h = h;
    this.esPaleta = false;
  }

 
  Cuadrado(float x, float y, float w, float h, boolean esPaleta) {
    pos = new PVector(x, y);
    this.w = w;
    this.h = h;
    this.esPaleta = esPaleta;
  }

  void mostrar() {
    fill(0);
    noStroke();
    if (esPaleta) {
      rectMode(CENTER);
    } else {
      rectMode(CORNER);
    }
    rect(pos.x, pos.y, w, h);
  }

  void moverPaleta(boolean up, boolean down) {
    if (up) pos.y -= 7;
    if (down) pos.y += 7;
    pos.y = constrain(pos.y, h / 2, height - h / 2);
  }

  boolean colisionaConCirculo(PVector cPos, float radio) {
    float minX, maxX, minY, maxY;

    if (esPaleta) {
      minX = pos.x - w / 2;
      maxX = pos.x + w / 2;
      minY = pos.y - h / 2;
      maxY = pos.y + h / 2;
    } else {
      minX = pos.x;
      maxX = pos.x + w;
      minY = pos.y;
      maxY = pos.y + h;
    }

    float cercanoX = constrain(cPos.x, minX, maxX);
    float cercanoY = constrain(cPos.y, minY, maxY);

    float distX = cPos.x - cercanoX;
    float distY = cPos.y - cercanoY;

    return (distX * distX + distY * distY) < (radio * radio);
  }
}
