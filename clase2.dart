import 'dart:io';

class Usuario {
  // Atributos
  int idUsuario;
  String nombre;
  String correo;
  String contrasena;
  String tipo;
  String telefono;
  String fechaRegistro;

  // Constructor
  Usuario(this.idUsuario, this.nombre, this.correo, this.contrasena, this.tipo, this.telefono, this.fechaRegistro);

  // Función para capturar datos
  void captura() {
    print("Ingrese los datos del Usuario:");
    stdout.write("ID Usuario: ");
    idUsuario = int.parse(stdin.readLineSync()!);
    stdout.write("Nombre: ");
    nombre = stdin.readLineSync()!;
    stdout.write("Correo: ");
    correo = stdin.readLineSync()!;
    stdout.write("Contraseña: ");
    contrasena = stdin.readLineSync()!;
    stdout.write("Tipo: ");
    tipo = stdin.readLineSync()!;
    stdout.write("Teléfono: ");
    telefono = stdin.readLineSync()!;
    stdout.write("Fecha de Registro (YYYY-MM-DD): ");
    fechaRegistro = stdin.readLineSync()!;
  }

  // Función para mostrar datos
  void mostrarDatos() {
    print("""
      Datos del Usuario:
      ID: $idUsuario
      Nombre: $nombre
      Correo: $correo
      Tipo: $tipo
      Teléfono: $telefono
      Fecha de Registro: $fechaRegistro
    """);
  }
}

class Curso {
  // Atributos
  int idCurso;
  String titulo;
  String descripcion;
  int instructorId;
  double precio;
  String categoria;
  String fechaCreacion;

  // Constructor
  Curso(this.idCurso, this.titulo, this.descripcion, this.instructorId, this.precio, this.categoria, this.fechaCreacion);

  // Función para capturar datos
  void captura() {
    print("Ingrese los datos del Curso:");
    stdout.write("ID Curso: ");
    idCurso = int.parse(stdin.readLineSync()!);
    stdout.write("Título: ");
    titulo = stdin.readLineSync()!;
    stdout.write("Descripción: ");
    descripcion = stdin.readLineSync()!;
    stdout.write("ID del Instructor: ");
    instructorId = int.parse(stdin.readLineSync()!);
    stdout.write("Precio: ");
    precio = double.parse(stdin.readLineSync()!);
    stdout.write("Categoría: ");
    categoria = stdin.readLineSync()!;
    stdout.write("Fecha de Creación (YYYY-MM-DD): ");
    fechaCreacion = stdin.readLineSync()!;
  }

  // Función para mostrar datos
  void mostrarDatos() {
    print("""
      Datos del Curso:
      ID: $idCurso
      Título: $titulo
      Descripción: $descripcion
      ID del Instructor: $instructorId
      Precio: $precio
      Categoría: $categoria
      Fecha de Creación: $fechaCreacion
    """);
  }
}

class Inscripcion {
  // Atributos
  int idInscripcion;
  int usuarioId;
  int cursoId;
  String fechaInscripcion;
  String estado;
  double progreso;
  double calificacion;

  // Constructor
  Inscripcion(this.idInscripcion, this.usuarioId, this.cursoId, this.fechaInscripcion, this.estado, this.progreso, this.calificacion);

  // Función para capturar datos
  void captura() {
    print("Ingrese los datos de la Inscripción:");
    stdout.write("ID Inscripción: ");
    idInscripcion = int.parse(stdin.readLineSync()!);
    stdout.write("ID Usuario: ");
    usuarioId = int.parse(stdin.readLineSync()!);
    stdout.write("ID Curso: ");
    cursoId = int.parse(stdin.readLineSync()!);
    stdout.write("Fecha de Inscripción (YYYY-MM-DD): ");
    fechaInscripcion = stdin.readLineSync()!;
    stdout.write("Estado: ");
    estado = stdin.readLineSync()!;
    stdout.write("Progreso (%): ");
    progreso = double.parse(stdin.readLineSync()!);
    stdout.write("Calificación: ");
    calificacion = double.parse(stdin.readLineSync()!);
  }

  // Función para mostrar datos
  void mostrarDatos() {
    print("""
      Datos de la Inscripción:
      ID: $idInscripcion
      ID Usuario: $usuarioId
      ID Curso: $cursoId
      Fecha de Inscripción: $fechaInscripcion
      Estado: $estado
      Progreso: $progreso%
      Calificación: $calificacion
    """);
  }
}

void main() {
  print("David Yair Martínez Nava: 22308051281077");

  // Crear una instancia de Usuario
  var usuario = Usuario(0, "", "", "", "", "", "");
  print("--- Captura de Usuario ---");
  usuario.captura();
  print("\n--- Mostrar Datos del Usuario ---");
  usuario.mostrarDatos();

  // Crear una instancia de Curso
  var curso = Curso(0, "", "", 0, 0.0, "", "");
  print("\n--- Captura de Curso ---");
  curso.captura();
  print("\n--- Mostrar Datos del Curso ---");
  curso.mostrarDatos();

  // Crear una instancia de Inscripcion
  var inscripcion = Inscripcion(0, 0, 0, "", "", 0.0, 0.0);
  print("\n--- Captura de Inscripción ---");
  inscripcion.captura();
  print("\n--- Mostrar Datos de la Inscripción ---");
  inscripcion.mostrarDatos();
}