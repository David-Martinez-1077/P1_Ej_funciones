double calcularAreaRectangulo(double base, double altura) {
  return base * altura;
}

String concatenarNombres(String nombre, String apellido) {
  return '$nombre $apellido';
}


void main() {
  print('David Yair Martínez Nava, num.control: 22308051281077');
  print("llamando a la función calcularAreaRectangulo");
  double area = calcularAreaRectangulo(10, 20);
  print('El área del rectángulo es: $area');
  print("llamando a la función concatenarNombres");
  String nombreCompleto = concatenarNombres('Juan', 'Pérez');
  print('El nombre completo es: $nombreCompleto');
}