program ejer10_unlp;
uses crt;

procedure suma_digitos(num:integer; var suma:integer; var cantotal:integer);
var
   aux:integer;
begin
        while(num > 0)do begin
          aux:= num mod 10;
          suma:=suma+aux;
          num:=num div 10;
          cantotal:=cantotal+1;

         end;
end;

var
   suma,contador,cantotal,num:integer;
begin
        suma:=0;
        cantotal:=0;
        contador:=0;
        writeln('ingrese secuecia de numero');
        readln(num);
        suma_digitos(num,suma,cantotal);
      while(suma<>10)do begin
         contador:=contador+1;
         writeln('suma digitos. ',suma);
         writeln('cantidad digitos. ',cantotal);
         suma:=0;
         cantotal:=0;
         writeln('ingrese secuecia de numero');
         readln(num);
         suma_digitos(num,suma,cantotal);
       end;
        writeln('contador : ', contador);
       readkey;
     end.




