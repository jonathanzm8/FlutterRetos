void main(){
  List<String> comidasFavoritas = [
    'Pizza',
    'Ceviche',
    'Tacos',
    'Sushi',
    'Pasta'
  ];

    comidasFavoritas.add('Hamburguesa');

    comidasFavoritas.remove('Tacos');
    print(comidasFavoritas[2]);

     List<List<String>> menuSemanal = [
        ['Pan con café', 'Arroz con pollo', 'Sopa de verduras'], // Lunes
        ['Tostadas', 'Lentejas', 'Pizza'],                       // Martes
        ['Avena', 'Seco de carne', 'Ensalada'],                  // Miércoles
        ['Empanadas', 'Pollo asado', 'Ceviche'],                 // Jueves
        ['Frutas', 'Fideos', 'Hamburguesa'],                     // Viernes
        ['Tortilla', 'Arroz con menestra', 'Pollo broaster'],    // Sábado
        ['Huevos', 'Camarones', 'Sándwich']                      // Domingo
  ];
    print(menuSemanal[1][1]);

    menuSemanal[4][2] = 'Pizza hawaiana'; // cambiar de dato



    List<String> diasSemana = ['Lunes', 'Martes', 'Miércoles', 'Jueves', 'Viernes', 'Sábado', 'Domingo'];

  
  for (int i = 0; i < menuSemanal.length; i++) {
    print('${diasSemana[i]}:');
    print('  Desayuno: ${menuSemanal[i][0]}');
    print('  Almuerzo: ${menuSemanal[i][1]}');
    print('  Cena:     ${menuSemanal[i][2]}');
  }

    
}