class Tienda {
  static const  nombre="Tienda luchita";
  static String anuncio="venga conpre";
  static int productosVendidos= 0;



  static void cambiarAnuncio(String nuevoAnuncio) {
    nuevoAnuncio = anuncio;
  }
  static void aumentarVentas() {
    productosVendidos++;
  }

   static int obtenerVentas() {
    return productosVendidos;
  }
  

}

class Producto {
  final String codigo;
  String? descripcion;
  double? precio;
  dynamic observacion;

  Producto(this.codigo);

  void registrarVenta(String descripcion, double precio, dynamic observacion) {
    this.descripcion = descripcion;
    this.precio = precio;
    this.observacion = observacion;
    Tienda.aumentarVentas(); // Registrar la venta en la tienda
  }
}

void main(){

  Producto producto1= Producto("1111"); 
  Producto producto2= Producto("2222");

  producto1.registrarVenta("pantalon", 20.00, "color Azul");
  producto2.registrarVenta("chompa", 40.00, "color negra");

  Tienda.cambiarAnuncio("Estamos de descuantos hasta el 50%");

  print("Producto1  Codigo: ${producto1.codigo} descripcion: ${producto1.descripcion} precio: ${producto1.precio} observacion:  ${producto1.observacion}");
  print("Producto2  Codigo: ${producto2.codigo} descripcion: ${producto2.descripcion} precio: ${producto2.precio} observacion:  ${producto2.observacion}");

  print("Total vendidos ${Tienda.productosVendidos}");
  
  
}