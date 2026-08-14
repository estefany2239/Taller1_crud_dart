import 'dart:io';

import '../lib/agregar.dart';
import '../lib/eliminar.dart';
import '../lib/listar.dart';
import '../lib/actualizar.dart';
import '../lib/productos.dart';

void main() {
  bool ejecutando = true;

  while (ejecutando) {
    print('\n========== MENÚ PRINCIPAL ==========');
    print('1. Agregar producto');
    print('2. Listar productos');
    print('3. Actualizar producto');
    print('4. Eliminar producto');
    print('5. Salir');
    print('=====================================');

    stdout.write('Elige una opción: ');
    String? opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        stdout.write('\nIngrese el nombre del producto: ');
        String nombre = stdin.readLineSync()?.trim() ?? '';

        if (nombre.isEmpty) {
          print('El nombre no puede estar vacío.');
          break;
        }

        stdout.write('Ingrese el precio del producto: ');
        String precioTexto = stdin.readLineSync()?.trim() ?? '';
        double? precio = double.tryParse(precioTexto);

        if (precio == null || precio < 0) {
          print('El precio no es válido.');
          break;
        }

        stdout.write('Ingrese la cantidad disponible: ');
        String cantidadTexto = stdin.readLineSync()?.trim() ?? '';
        int? cantidad = int.tryParse(cantidadTexto);

        if (cantidad == null || cantidad < 0) {
          print('La cantidad no es válida.');
          break;
        }

        agregarProducto(nombre, precio, cantidad);
        break;

      case '2':
        listarProductos();
        break;

      case '3':
        if (productos.isEmpty) {
          print('\nNo hay productos registrados.');
          break;
        }

        listarProductos();

        stdout.write(
          '\nIngrese el número del producto que desea actualizar: ',
        );

        String numeroTexto = stdin.readLineSync()?.trim() ?? '';
        int? numero = int.tryParse(numeroTexto);

        if (numero == null || numero < 1 || numero > productos.length) {
          print('El número de producto no es válido.');
          break;
        }

        int indice = numero - 1;

        stdout.write('Nuevo nombre: ');
        String nuevoNombre = stdin.readLineSync()?.trim() ?? '';

        stdout.write('Nuevo precio: ');
        String nuevoPrecioTexto = stdin.readLineSync()?.trim() ?? '';

        stdout.write('Nueva cantidad: ');
        String nuevaCantidadTexto = stdin.readLineSync()?.trim() ?? '';

        String? nombreActualizado =
            nuevoNombre.isEmpty ? null : nuevoNombre;

        double? precioActualizado;

        if (nuevoPrecioTexto.isNotEmpty) {
          precioActualizado = double.tryParse(nuevoPrecioTexto);

          if (precioActualizado == null || precioActualizado < 0) {
            print('El precio no es válido.');
            break;
          }
        }

        int? cantidadActualizada;

        if (nuevaCantidadTexto.isNotEmpty) {
          cantidadActualizada = int.tryParse(nuevaCantidadTexto);

          if (cantidadActualizada == null || cantidadActualizada < 0) {
            print('La cantidad no es válida.');
            break;
          }
        }

        actualizarProducto(
          indice,
          nombreActualizado,
          precioActualizado,
          cantidadActualizada,
        );

        break;

      case '4':
        if (productos.isEmpty) {
          print('\nNo hay productos registrados.');
          break;
        }

        listarProductos();

        stdout.write(
          '\nIngrese el número del producto que desea eliminar: ',
        );

        String numeroTexto = stdin.readLineSync()?.trim() ?? '';
        int? numero = int.tryParse(numeroTexto);

        if (numero == null || numero < 1 || numero > productos.length) {
          print('El número de producto no es válido.');
          break;
        }

        eliminarProducto(numero - 1);
        break;

      case '5':
        print('\nSaliendo del programa...');
        ejecutando = false;
        break;

      default:
        print('\nOpción no válida. Intenta de nuevo.');
    }
  }
}