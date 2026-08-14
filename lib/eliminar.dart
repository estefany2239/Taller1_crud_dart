import 'productos.dart';

void eliminarProducto(int indice) {
  if (indice < 0 || indice >= productos.length) {
    print('\nEl número de producto no es válido.');
    return;
  }

  productos.removeAt(indice);

  print('\nProducto eliminado correctamente.');
}