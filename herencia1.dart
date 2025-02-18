// Clase base Animal
class Animal {
  // Atributos
  int id_animal;
  String nombre;
  String raza;

  // Constructor el nombre de la función es igual al nombre de la clase
  Animal(this.id_animal, this.nombre, this.raza);

  // Función comer
  void comer() {
    print('$nombre está comiendo.');
  } //fin metodo comer
}// fin clase Animal

// Clase Perro que hereda de Animal
class Perro extends Animal { // 
  // Constructor el nombre de la función es igual al nombre de la clase Animal
  Perro(int id_animal, String nombre, String raza) : super(id_animal, nombre, raza);

  // Función correr
  void correr() {
    print('$nombre está corriendo.');
  }// fin metodo correr

  // Función dormir
  void dormir() {
    print('$nombre está durmiendo.');
  }// fin metodo dormir
}// fin de la clase Perro

void main() {
  print("David Yair Martínez Nava: 22308051281077, grupo: 6to-I");
  // Crear una instancia de Perro
  // nombre del objeto es princesa
  Perro princesa = Perro(1, 'Destructor', 'Husky');

  // Acceder a los atributos
  print('ID: ${princesa.id_animal}, Nombre: ${princesa.nombre}, Raza: ${princesa.raza}');

  // Llamar a las funciones
  princesa.comer();  // Función heredada de Animal
  princesa.correr(); // Función de Perro
  princesa.dormir(); // Función de Perro
}