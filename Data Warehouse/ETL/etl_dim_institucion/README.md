# ETL

Extraer los datos del Data Lake (tabla DL_programas) y cargarlos en Data Warehouse (tabla DIM_institucion).

![Screenshot of a comment on a GitHub issue showing an image, added in the Markdown, of an Octocat smiling and raising a tentacle.](etl_dim_institucion.png)

# Consideraciones:

- Orden de ejecución: 3
- Se debe ejecutar en el orden de las dependencias: primero DIM_Departamentos, DIM_Municipios y luego DIM_institucion.
- No es necesaria la preexistencia de la tabla, el proceso es capaz de crearla durante la ejecución.
- Verificar la conexión a la(s) base(s) de dato(s) antes de la ejecución del ETL.
