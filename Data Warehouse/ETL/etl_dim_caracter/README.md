# ETL

Extraer los datos del Data Lake (tabla DL_programas) y cargarlos en Data Warehouse (tabla DIM_caracter).

# Consideraciones:

- Orden de ejecución: 5
- No tiene dependencias, se puede ejecutar en cualquier orden.
- No es necesaria la preexistencia de la tabla, el proceso es capaz de crearla durante la ejecución.
- Verificar la conexión a la(s) base(s) de dato(s) antes de la ejecución del ETL.
