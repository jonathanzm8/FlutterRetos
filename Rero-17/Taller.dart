

class Taller {
  static const String nombre = "Taller Miguel";
  static String mensajeGeneral = "Bienvenido al taller ";
  static int _totalReparaciones = 0;



  static void cambiarMensaje(String nuevoMensaje) {
    mensajeGeneral = nuevoMensaje;
  }

  static void incrementarContador() {
    _totalReparaciones++;
  }

  static int obtenerReparaciones() {
    return _totalReparaciones;
  }
}


class Empleado {
  String nombre;

  Empleado(this.nombre);

  void actualizarMensajeDelTaller(String nuevoMensaje) {
    Taller.cambiarMensaje(nuevoMensaje);
  }
}

class Vehiculo {
  String placa;
  String? diagnostico;
  String estado = "Pendiente";
  dynamic extraInfo;

  Vehiculo(this.placa);

  void registrarDiagnostico(String diagnosticoTexto) {
    diagnostico = diagnosticoTexto;
    estado = "Reparado";
    Taller.incrementarContador();
  }
}

// Ejemplo de uso
void main() {
  print("Nombre del Taller: ${Taller.nombre}");
  print("Mensaje: ${Taller.mensajeGeneral}\n");

  Empleado empleado = Empleado("Carlos");
  empleado.actualizarMensajeDelTaller("Estamos atendiendo con normalidad");
  print("Nuevo mensaje del taller: ${Taller.mensajeGeneral}\n");

  Vehiculo vehiculo1 = Vehiculo("ABC123");
  vehiculo1.extraInfo = {"marca": "Toyota", "modelo": "Corolla"};
  vehiculo1.registrarDiagnostico("Falla en el motor.");

  Vehiculo vehiculo2 = Vehiculo("ABC1212");
  vehiculo2.extraInfo = {"marca": "Hyday", "modelo": "Tucson"};
  vehiculo2.registrarDiagnostico("cambio de llantas.");

  print("Vehículo informacion del vehiculo1 ${vehiculo1.placa} - Estado: ${vehiculo1.estado}, Diagnóstico: ${vehiculo1.diagnostico}");
  print("Total reparaciones: ${Taller.obtenerReparaciones()}");

  print("------------------------------------------------");

  print("Vehículo informacion del vehiculo2 ${vehiculo2.placa} - Estado: ${vehiculo2.estado}, Diagnóstico: ${vehiculo2.diagnostico}");
  print("Total reparaciones: ${Taller.obtenerReparaciones()}");


}
