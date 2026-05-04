int filas = 8;
int columnas = 4;
int anchoLadrillo;
int altoLadrillo;

void setup() {
  size(600, 600);
  anchoLadrillo = width / columnas;
  altoLadrillo = height / filas;
}

void draw() { 
  for (int j = 0; j < filas; j++) {
    for (int i = 0; i < columnas + 1; i++) {
      
      int x = i * anchoLadrillo;
      int y = j * altoLadrillo; 
      if (j % 2 == 1) {
        x = x - (anchoLadrillo / 2);
      } 
      rect(x, y, anchoLadrillo, altoLadrillo);
    }
  } 
}
