{14.Un m�dico guarda informaci�n de sus pacientes; nombre y apellido, direcci�n, tel�fono,
email, fecha de su �ltima visita, obra social, si tiene alergias y un campo de observaciones.
Obtener la siguiente informaci�n:
a. Nombre y apellido de los pacientes con alergias. Mostrar las observaciones.
b. Mostrar un listado con los nombres y tel�fonos de los pacientes que tienen obra
social �IOMA�.
c. Porcentaje de pacientes que no hicieron consultas este a�o.
d. Mostrar un listado con los nombres y email de los pacientes que no tienen obra
social.}
program ejer14_pract5;
uses crt;
  type
       paciente=record
                nombre:string[15];
                apellido:string[15];
                direccion:string;
                telefono:integer;
                email:string;
                fecha_ult_v:200..2021;
                obra_social:boolean;
                tiene_alergia:bollean;
                campo_obser:string;
                end;
     vector=array[1..100]of pacientes;

 var
     p:paciente;
     v:vector;

     procedure recorrer_vector(v:vector);
     var
         i:integer;
         begin
              for i:=1to 100 do begin
                 leer(p);
                 aux:=v[i].nom_apell;
                  if(ver_alergia(aux,ok);
                     writeln('pacientes con alergias',v[i].campo_obser);







  begin
       recorrer_vector(v:vector);

