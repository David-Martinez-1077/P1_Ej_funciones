int multiplicacion(int a, int b) {
  return a * b;
} 

int flechamultiplicacion(int a, int b) => a * b;

double divide(int a, int b) => a / b;

double divide2(int a, int b) {
  return a / b;
}

void main(){
  print('David Yair Martínez Nava, num.control: 22308051281077');
  print("Llamando a la función multiplicación");
  print('La multiplicación es: ${multiplicacion(5, 3)}');
  print("llamando a la función flechamultiplicacion");
  print('La multiplicación es: ${flechamultiplicacion(10, 2)}');
  print("llamando a la función divide sin flecha");
  print('La división es: ${divide2(10, 3)}');
  print("llamando a la función divide con flecha");
  print('La división es: ${divide(10, 3)}');

}