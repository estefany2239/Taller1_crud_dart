import 'productos.dart';

void listarProductos() {
  if (productos.isEmpty) {
    print('\nNo hay productos registrados.');
    return;
  }

  print('\n LISTA DE PRODUCTOS');

  for (int i = 0; i < productos.length; i++) {
    print('\nProducto ${i + 1}');
    print('Nombre: ${productos[i]['nombre']}');
    print('Precio: \$${productos[i]['precio']}');
    print('Cantidad disponible: ${productos[i]['cantidad']}');
  }

  print('\n=========================================');
}