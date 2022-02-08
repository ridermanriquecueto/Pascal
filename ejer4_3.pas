 {4. Se lee una secuencia de caracteres hasta encontrar un punto, informar la longitud de la
palabra más corta que comienza con 'a'}


program ejer3_4;
uses crt;
var
    minimo,contador:integer;
    palabra:string;

begin
   minimo:=999;
 contador:=0;
       writeln('ingrese secuencia de caracter');
       readln(palabra);
       while(palabra <> '.')do  begin
            contador:=contador+1;
         if ((length(palabra)< minimo)and (palabra[1]= 'a'))then
             minimo:=length(palabra);
          writeln('ingrese secuencia de caracter');
         readln(palabra);
      end;

           writeln('la cantidad palabras ingresados son:',contador);
           writeln('palabars mas cortas que comienzan con a es:',minimo);
      readkey;
end.


