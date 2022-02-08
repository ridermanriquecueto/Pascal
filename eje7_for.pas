program ejer7;
uses crt;
var
    cant5,i,num:integer;
begin
     cant5:=0;
     for i :=1 to 10 do
       begin
          writeln('ingrese un numero: ');
          read(num);
          if (num=5)then
           cant5:=cant5+1;
     end;
        writeln('la cantidad de cinco es: ', cant5);
        readkey;
 end.
