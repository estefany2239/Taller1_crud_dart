import 'productos.dart';

void actualizarProducto(
  int indice,
  String? nombre,
  double? precio,
  int? cantidad,
) {
  if (indice < 0 || indice >= productos.length) {
    print('\nEl número de producto no es válido.');
    return;
  }

  if (nombre != null && nombre.isNotEmpty) {
    productos[indice]['nombre'] = nombre;
  }

  if (precio != null) {
    productos[indice]['precio'] = precio;
  }

  if (cantidad != null) {
    productos[indice]['cantidad'] = cantidad;
  }

  print('\nProducto actualizado correctamente.');
}