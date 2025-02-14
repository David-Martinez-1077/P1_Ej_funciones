void main() {
  // Crear un mapa con 12 pares de datos (número del mes y nombre del mes)
  Map<int, String> meses = {
    1: 'Enero',
    2: 'Febrero',
    3: 'Marzo',
    4: 'Abril',
    5: 'Mayo',
    6: 'Junio',
    7: 'Julio',
    8: 'Agosto',
    9: 'Septiembre',
    10: 'Octubre',
    11: 'Noviembre',
    12: 'Diciembre',
  };

  // Acceder a los valores del mapa
  print('El mes 1 es: ${meses[1]}'); // Enero
  print('El mes 12 es: ${meses[12]}'); // Diciembre

  // Recorrer el mapa e imprimir todos los pares clave-valor
  print('\nLista de meses:');
  // usando forEach 
  meses.forEach((numeroMes, nombreMes) {
    print('$nombreMes');
  });

  // Verificar si un mes existe en el mapa
  int mesBuscado = 7;
  if (meses.containsKey(mesBuscado)) {
    print('\nEl mes $mesBuscado existe y es: ${meses[mesBuscado]}');
  } else {
    print('\nEl mes $mesBuscado no existe.');
  }
}