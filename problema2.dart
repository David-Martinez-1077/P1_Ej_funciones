import 'dart:io';

void main() {
  // David Yair Martínez Nava, num.control: 22308051281077
  // Capturar la lista de números decimales
  List<double> listaNumeros = capturarDatos();

  // Mostrar los elementos y calcular el promedio
  mostrarElementosYCalcularPromedio(listaNumeros);

  print("David Yair Martínez Nava, num.control: 22308051281077");
}

// Función para capturar los datos de la lista
List<double> capturarDatos() {
  List<double> lista = [];
  print("Ingrese el número de elementos que desea agregar:");
  int cantidad = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < cantidad; i++) {
    print("Ingrese el número ${i + 1}:");
    double numero = double.parse(stdin.readLineSync()!);
    lista.add(numero);
  }

  return lista;
}

// Función para mostrar los elementos y calcular el promedio
void mostrarElementosYCalcularPromedio(List<double> lista) {
  print("\nElementos de la lista:");
  double suma = 0;

  for (double numero in lista) {
    print(numero);
    suma += numero; // Acumular la suma de los números
  }

  // Calcular el promedio
  double promedio = suma / lista.length;
  print("\nEl promedio de los números es: ${promedio.toStringAsFixed(2)}");
}