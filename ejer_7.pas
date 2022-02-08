program ejr7;
uses crt;
var
  num,cantn,cant5:integer;

begin
     writeln('ingrese numero');
     readln(num);
     cantn:=0;
     cant5:=num;
     while(cantn<9)do
       begin
          cantn:=cantn+1;
        if(num=5)then
          begin
         cant5:=cant5+1;
           end;
           readln(num);
       end;
     writeln(' la cantidad de cincos es', cant5);
     readkey;
 end.


