import 'dart:io';

class Cursos {
  String id_curso;
  String titulo;
  String descripcion;
  String instructor;
  double precio;
  String categoria;
  String fecha_creacion;

  Cursos(this.id_curso, this.titulo, this.descripcion, this.instructor,
      this.precio, this.categoria, this.fecha_creacion);

  void capturaDatos() {
    print("Por favor, ingrese los datos del curso:");
    stdout.write("ID del curso: ");
    id_curso = stdin.readLineSync()!;
    stdout.write("Título del curso: ");
    titulo = stdin.readLineSync()!;
    stdout.write("Descripción del curso: ");
    descripcion = stdin.readLineSync()!;
    stdout.write("Instructor del curso: ");
    instructor = stdin.readLineSync()!;
    stdout.write("Precio del curso: ");
    precio = double.parse(stdin.readLineSync()!);
    stdout.write("Categoría del curso: ");
    categoria = stdin.readLineSync()!;
    stdout.write("Fecha de creación del curso (YYYY-MM-DD): ");
    fecha_creacion = stdin.readLineSync()!;
  }
}

class Clases extends Cursos {
  String id_clase;
  String curso_id;
  String titulo;
  String descripcion;
  String url_video;
  String duracion;
  int orden;

  Clases(
      this.id_clase,
      this.curso_id,
      this.titulo,
      this.descripcion,
      this.url_video,
      this.duracion,
      this.orden,
      String id_curso,
      String titulo_curso,
      String descripcion_curso,
      String instructor,
      double precio,
      String categoria,
      String fecha_creacion)
      : super(id_curso, titulo_curso, descripcion_curso, instructor, precio,
            categoria, fecha_creacion);

  void capturaDatosClase() {
    print("\nPor favor, ingrese los datos de la clase:");
    stdout.write("ID de la clase: ");
    id_clase = stdin.readLineSync()!;
    stdout.write("ID del curso asociado: ");
    curso_id = stdin.readLineSync()!;
    stdout.write("Título de la clase: ");
    titulo = stdin.readLineSync()!;
    stdout.write("Descripción de la clase: ");
    descripcion = stdin.readLineSync()!;
    stdout.write("URL del video: ");
    url_video = stdin.readLineSync()!;
    stdout.write("Duración de la clase (en minutos): ");
    duracion = stdin.readLineSync()!;
    stdout.write("Orden de la clase: ");
    orden = int.parse(stdin.readLineSync()!);
  }

  void mostrardatos() {
    print("\n----Datos del curso-----:");
    print("ID del curso: $id_curso");
    print("Título del curso: $titulo");
    print("Descripción del curso: $descripcion");
    print("Instructor: $instructor");
    print("Precio: \$$precio");
    print("Categoría: $categoria");
    print("Fecha de creación: $fecha_creacion");

    print("\n----Datos de la clase----:");
    print("ID de la clase: $id_clase");
    print("ID del curso asociado: $curso_id");
    print("Título de la clase: $titulo");
    print("Descripción de la clase: $descripcion");
    print("URL del video: $url_video");
    print("Duración: $duracion minutos");
    print("Orden: $orden");
  }
}

void main() {
  print("David Yair Martínez Nava: 22308051281077, grupo: 6to-I");
  // Crear una instancia de Cursos
  Cursos curso = Cursos("", "", "", "", 0.0, "", "");

  // Capturar datos del curso desde la interfaz de usuario
  curso.capturaDatos();

  // Crear una instancia de Clases
  Clases clase = Clases(
      "", "", "", "", "", "", 0, curso.id_curso, curso.titulo, curso.descripcion,
      curso.instructor, curso.precio, curso.categoria, curso.fecha_creacion);

  // Capturar datos de la clase desde la interfaz de usuario
  clase.capturaDatosClase();

  // Mostrar los datos del curso y la clase
  clase.mostrardatos();
}