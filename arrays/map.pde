int columnas = 30, filas = 25;
float[][] distancias = new float[columnas][filas];

void setup() {
  size(800, 600);
}

void draw() { 
  float w = width / (float)columnas;
  float h = height / (float)filas;
 
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      float centroX = i * w + w/2;
      float centroY = j * h + h/2;
      distancias[i][j] = dist(centroX, centroY, mouseX, mouseY);
    }
  }
 
  for (int i = 0; i < columnas; i++) {
    for (int j = 0; j < filas; j++) {
      float colorGris = map(distancias[i][j], 0, dist(0,0,width,height), 255, 0);
      fill(colorGris);
      rect(i * w, j * h, w, h);
    }
  }
}
