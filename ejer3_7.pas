  {  7. Se lee una secuencia de caracteres hasta encontrar un punto. Contar la cantidad de palabras.
Considerar que cada palabra puede estar separada por un espacio.  }


{program ejer3_7;
uses crt;
var
   cantp:integer;
   car:char;
begin
     cantp:=1;
     writeln('ingrese caracter');
     readln(car);

    while(car<>'.')do begin

    if(car='*')then
               cantp:=cantp+1;
         writeln('ingrese caracter');
         readln(car);

     end;
     writeln('cantidad de palabras es: ',cantp);
     readkey;
end. }










{program ejer3_7;
uses crt;
var

    cantp:integer;
    palabra:string;
begin
       cantp:=0;
       writeln('ingrese secuecia de caracteres');
        readln(palabra);

      while((palabra)<>'.')do begin


          if(palabra[length]+1 =' ')then
            cantp:=cantp+1;
          writeln('ingrese secuecia de caracteres');
          readln(palabra);
       end;
      writeln('cantidad de palabras son: ',cantp);
      readkey;
end. }








{8. Se lee una secuencia de caracteres terminada en '*'. La secuencia está dividida en oraciones
que terminan en '.'. Para cada oración se pide contar e informar la cantidad de veces que
aparece la subsecuencia 'LA' y contar la cantidad de palabras por oración.}

program ejer8_3;
var
   aux, car, sentences : String;
   i, cant, long, cont : integer;
begin
   cant := 0;
   cont := 0;
   car := ' ';
   aux := ' ';
   writeln('Ingrese las oraciones se evaluara hasta leer el caracter "*" ...');
   readln(sentences);
   long := Length(sentences);
   writeln(long);

   if (long = 0) then
      writeln('No ingreso ninguna oracion...')
   else begin
      i := 1;
      car :=sentences[i];
      while((sentences[i] <> '*') and (i <= long)) do begin

         aux := sentences[i +1];
         if ((car = '.') and (i <= long)) then cant := cant + 1;

         if ((car = 'l') and (aux = 'a')) then cont := cont + 1;

         i := i +1;
         car :=sentences[i];
      end;
   end;
   writeln('la cantidad de oraciones es, ', cant + 1);
   writeln('la cantidad de palabras que contienen "la" es , ', cont);
   readln;
end.












