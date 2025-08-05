void main() {
  // 1. Declarar el mapa
  Map<String, int> puntajes = {};

  // 2. Agregar jugadores con puntajes
  puntajes['Ana'] = 80;
  puntajes['Luis'] = 95;
  puntajes['Carlos'] = 70;
  puntajes['María'] = 88;

  // 3. Mostrar todos los nombres de los jugadores
  print('Jugadores registrados:');
  for (var nombre in puntajes.keys) {
    print(nombre);
  }

  // 4. Imprimir el puntaje de un jugador específico
  print('\nPuntaje de Luis: ${puntajes['Luis']}');

  // 5. Modificar el puntaje de un jugador
  puntajes['Carlos'] = 76;
  print('Puntaje actualizado de Carlos: ${puntajes['Carlos']}');

  // 6. Agregar un nuevo jugador
  puntajes['Diana'] = 91;

  // 7. Eliminar a un jugador
  puntajes.remove('Ana');

  // 8. Imprimir el mapa actualizado
  print('\nMapa actualizado de puntajes:');
  print(puntajes);
}