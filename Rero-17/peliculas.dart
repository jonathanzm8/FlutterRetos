class Pelicula {
  String titulo;
  int anioEstreno;

  Pelicula(this.titulo, this.anioEstreno);
}

void main() {
  // 2. Declarar el catálogo de streaming
  Map<String, List<Pelicula>> catalogoStreaming = {
    'Netflix': [],
    'HBO': [],
    'Disney+': [],
  };
  
  // 3. Agregar películas a cada plataforma
  catalogoStreaming['Netflix']!.addAll([
    Pelicula('Stranger Things', 2016),
    Pelicula('The Witcher', 2019),
  ]);

  catalogoStreaming['HBO']!.addAll([
    Pelicula('Game of Thrones', 2011),
    Pelicula('The Last of Us', 2023),
  ]);

  catalogoStreaming['Disney+']!.addAll([
    Pelicula('Encanto', 2021),
    Pelicula('Loki', 2021),
  ]);

  // 4. Imprimir títulos de películas en Netflix
  print('Películas en Netflix:');
  for (var peli in catalogoStreaming['Netflix']!) {
    print('- ${peli.titulo}');
  }

  // 5. Agregar nueva película a Disney+
  catalogoStreaming['Disney+']!.add(Pelicula('Wish', 2023));

  // 6. Cambiar el año de estreno de una película de HBO
  var hboPeliculas = catalogoStreaming['HBO']!;
  for (var peli in hboPeliculas) {
    if (peli.titulo == 'Game of Thrones') {
      peli.anioEstreno = 2010;
    }
  }

  // 7. Eliminar una película de Netflix
  catalogoStreaming['Netflix']!.removeWhere((peli) => peli.titulo == 'The Witcher');

  // 8. Recorrer todo el mapa y mostrar la info
  print('\nCatálogo completo:');
  catalogoStreaming.forEach((plataforma, peliculas) {
    print('\n$plataforma:');
    for (var peli in peliculas) {
      print('- ${peli.titulo} (${peli.anioEstreno})');
    }
  });
}
