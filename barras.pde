int num = 20;
int[] alturas = new int[20]; 

void setup() {
  size(800, 400);
}

void draw() {
  background(255);
  int ancho = width / num;
  if (mousePressed) {
    int i = mouseX / ancho;
      if (i >= 0 && i < 20) {
        alturas[i] = height - mouseY; 
    }
  }
   fill(0, 155);
    for (int i = 0; i < 20; i++) {
      rect(i * ancho, height - alturas[i], ancho, alturas[i]);
    }
}
