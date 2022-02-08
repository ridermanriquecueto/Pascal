{11.De cada alumno de un colegio se conoce su nombre, apellido, año de ingreso, promedio
general, cantidad de materias aprobadas. La cantidad total de materias de la carrera es 30.
a. Informar la cantidad de alumnos que ingresaron en el 2020 con promedio general
mayor que 8.
b. Informar los nombres y apellidos de los alumnos con promedio general mayor a 7.
c. Informar los nombres y apellido de los alumnos recibidos.
d. Informar los alumnos que tiene aprobado el 70 % de la carrera.}
program ejer_pract5;
uses crt;
      alumno=record;
              nombre:string[15];
              apellido:string[15];
              año_ingreso:integer;
              promedio:real;
              cantidad_mate:integer;
              end;






var
    a:alumno;
