// future , async-awit

import 'dart:async';

//  Hornear un pastel (tarda en hornearse)
Future<String> hornearPastel() async {
  return Future.delayed(Duration(seconds: 5),()=>"el pastel esta listo");
  
}

void pastelListo() async{
  print("horneando el pastel");
  final mensaje= await hornearPastel();
  print(mensaje);
}






// Ejemplo 2: Descargar un archivo


Future<String> descargarArchivo() async {
  return Future.delayed(Duration(seconds: 5),()=>"archivo descargado");
  
}
void descargaListo() async{
  print("desacargando el archivo");
  final mensaje= await descargarArchivo();
  print(mensaje);
}




void main()  {
  print("voy a prepara un pastel");
  pastelListo();
  print("arreglado la casa");

  

 
}
