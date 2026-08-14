import 'productos.dart';

void agregarProducto(String nombre, double precio, int cantidad) {
  productos.add({
    'nombre': nombre,
    'precio': precio,
    'cantidad': cantidad,
  });

  print('\nProducto agregado correctamente.');