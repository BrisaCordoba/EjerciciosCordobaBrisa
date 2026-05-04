int cant = 4;
int lineay, int lineax;

void setup() {
  size(600, 600); 
  lineax = width / cant; 
  lineay = height / cant;
}

void draw() {  
  for (int i = 0; i <= cant; i++) {
    for (int j = 0; j <= cant; j++) { 
      line(i * lineax, 0, j * lineax, height);
    }
  }  
}
