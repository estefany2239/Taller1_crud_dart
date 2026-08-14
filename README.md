 Taller 1: CRUD de Productos en Dart

 Descripción del Proyecto

Este es un proyecto de consola desarrollado en **Dart** para gestionar un catálogo de productos de una tienda.

La aplicación permite realizar las operaciones básicas de un **CRUD**:

* Agregar productos.
* Listar productos.
* Actualizar productos.
* Eliminar productos.
* Salir del programa.

El proyecto tiene como objetivo aplicar conceptos fundamentales de programación en Dart, como:

* Listas.
* Mapas.
* Ciclos.
* Estructuras `switch-case`.
* Funciones.
* Validación de datos.
* Manejo de entradas por consola.

También se aplica la metodología **Gitflow** para organizar el desarrollo y el control de versiones del proyecto.



 Aprendiz

 Nombre                      

 Estefany Arango Morales 



 Estructura del Proyecto


taller1/
│
├── bin/
│   └── main.dart
│
├── lib/
│   ├── productos.dart
│   ├── agregar.dart
│   ├── listar.dart
│   ├── actualizar.dart
│   └── eliminar.dart
│
├── test/
│
├── pubspec.yaml
├── analysis_options.yaml
└── README.md


`bin/taller1.dart`

Contiene el programa principal (`main`), el menú de opciones y la estructura `switch-case` encargada de controlar las diferentes funcionalidades.

 `lib/productos.dart`

Contiene la lista utilizada para almacenar los productos mediante una estructura de lista de mapas:

```dart
List<Map<String, dynamic>> productos = [];
```

`lib/agregar.dart`

Contiene la función encargada de registrar nuevos productos con:

* Nombre.
* Precio.
* Cantidad disponible.

`lib/listar.dart`

Contiene la función encargada de mostrar todos los productos registrados, incluyendo:

* Número de índice.
* Nombre.
* Precio.
* Cantidad disponible.

 `lib/actualizar.dart`

Contiene la función para modificar los datos de un producto.

El usuario puede actualizar únicamente los datos que necesite, manteniendo los demás valores sin cambios.

 `lib/eliminar.dart`

Contiene la función encargada de eliminar un producto de la lista mediante su número.



 Funcionalidades

 1. Agregar producto

Permite ingresar:

* Nombre del producto.
* Precio.
* Cantidad disponible.

2. Listar productos

Muestra todos los productos almacenados en la lista.

 3. Actualizar producto

Permite seleccionar un producto mediante su número y modificar:

* Nombre.
* Precio.
* Cantidad disponible.

Los campos que se dejan vacíos conservan la información anterior.

 4. Eliminar producto

Permite seleccionar un producto mediante su número y eliminarlo de la lista.

 5. Salir

Finaliza la ejecución del programa.

 Tecnologías utilizadas

* **Dart**
* **Visual Studio Code**
* **Git**
* **GitHub**
* **Gitflow**



 Instrucciones de Ejecución

Para ejecutar el proyecto, es necesario tener instalado el **SDK de Dart**.

Desde la terminal, ubicándose en la carpeta raíz del proyecto, ejecutar:

```bash
dart run
```

También se puede ejecutar directamente el archivo principal:

```bash
dart run bin/taller1.dart
```



 Metodología Gitflow

El proyecto utiliza Gitflow para organizar el desarrollo mediante diferentes ramas.

 Ramas principales

```text
main
  │
  └── develop
        │
        ├── feature/agregar
        ├── feature/listar
        ├── feature/actualizar
        └── feature/eliminar
```

`main`

Contiene las versiones estables del proyecto.

 `develop`

Contiene la integración de las diferentes funcionalidades antes de llevarlas a la rama principal.

 Ramas `feature`

Se utilizan para desarrollar cada funcionalidad de manera independiente.

Ejemplos:

```bash
git checkout -b feature/agregar
```

```bash
git checkout -b feature/listar
```

```bash
git checkout -b feature/actualizar
```

```bash
git checkout -b feature/eliminar
```



 Commits

Los commits se realizan de manera concreta y descriptiva, agrupando funcionalidades relacionadas.

Ejemplos:

```bash
git commit -m "feat: agregar productos"
```

```bash
git commit -m "feat: listar productos"
```

```bash
git commit -m "feat: actualizar productos"
```

```bash
git commit -m "feat: eliminar productos"
```


 Objetivo

Desarrollar una aplicación CRUD funcional en Dart desde consola, aplicando estructuras de datos, ciclos, funciones y estructuras de control, además de utilizar Gitflow para gestionar correctamente el desarrollo y control de versiones del proyecto.
