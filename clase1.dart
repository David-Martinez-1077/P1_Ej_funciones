class Persona {
  // Atributos
  String nombre;
  int edad;

  // Constructor
  Persona(this.nombre, this.edad);

  // Función para saludar
  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }

  // Función para cumplir años
  void cumplirAnos() {
    edad++;
    print('¡Feliz cumpleaños! Ahora tengo $edad años.');
  }
}

void main() {
  // Crear una instancia de Persona
  var persona = Persona('David Yair Martínez Nava', 17);

  // Acceder a los atributos
  print("David Yair Martínez Nava: 22308051281077");
  print('Nombre: ${persona.nombre}'); // Salida: Nombre: David Yair Martínez Nava
  print('Edad: ${persona.edad}');     // Salida: Edad: 17

  // Llamar a las funciones
  persona.saludar(); // Salida: Hola, mi nombre es David Yair Martínez Nava y tengo 17 años.
  persona.cumplirAnos(); // Salida: ¡Feliz cumpleaños! Ahora tengo 18 años.

}