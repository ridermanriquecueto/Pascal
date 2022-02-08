 {6. Escriba un programa que lea una secuencia de caracteres terminada en punto y determine la
cantidad de veces que aparece una ‘a’ seguida de una ‘e’ y viceversa.}
program ejer3_6;
uses crt;
var
   cant, i:integer;
   ant : char;
   palabra : String;
 begin
        cant:=0;
        writeln('ingrese una secuencia de caracteres');
        readln(palabra);

        while(palabra <> '.')do begin
           i := 0;
           ant := ' ';
           for i := 1 to Length(palabra)-1 do begin
              ant := palabra[i];
              if ((ant = 'a') and (palabra[i+1] = 'e')) or ((ant = 'e') and (palabra[i+1] = 'a')) then
                 cant := cant + 1;
           end;
           writeln('ingrese una secuencia de caracteres');
           readln(palabra);
        end;



        writeln('cantidad de letras a y e sguidos es: ', cant);
        readkey;
 end.
