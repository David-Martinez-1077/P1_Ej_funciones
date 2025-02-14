void main() {
  // Mapa de usuarios
  Map<String, dynamic> usuario = {
    'id_usuario': 1,
    'nombre': 'Juan Pérez',
    'correo': 'juan.perez@example.com',
    'contraseña': '123456',
    'tipo': 'Estudiante',
    'telefono': '+123456789',
    'fecha_registro': '2023-01-15',
  };

  // Mostrar los datos del usuario usando forEach
  print('Datos del usuario:');
  usuario.forEach((clave, valor) {
    print('$clave: $valor');
  });



  // Mapa de cursos
  Map<String, dynamic> curso = {
    'id_curso': 101,
    'titulo': 'Introducción a Dart',
    'descripcion': 'Aprende los fundamentos de Dart desde cero.',
    'instructor': 'Ana Gómez',
    'precio': 49.99,
    'categoria': 'Programación',
    'telefono': '+987654321',
  };

 // Mostrar los datos del curso usando forEach
  print('\nDatos del curso:');
  curso.forEach((clave, valor) {
    print('$clave: $valor');
  });



  // Mapa de inscripciones
  Map<String, dynamic> inscripcion = {
    'id_inscripcion': 1001,
    'usuario_id': 1,
    'curso_id': 101,
    'fecha_inscripcion': '2023-10-01',
    'estado': 'Activo',
    'progreso': 75.5,
    'calificacion': 4.5,
  };

 
  // Mostrar los datos de la inscripción usando forEach
  print('\nDatos de la inscripción:');
  inscripcion.forEach((clave, valor) {
    print('$clave: $valor');
  });
}