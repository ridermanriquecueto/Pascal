program calculadora;
uses crt;
  var
     n1,n2,resul:integer;
     ope:string;
    function suma(n1:integer;n2:integer):integer;
     begin

            result:=(n1+n2);
            end;
     function resta(n1:integer;n2:integer):integer;
       begin
           result:=(n1-n2);
            end;
     function multiplicacion(n1:integer;n2:integer):integer;
      begin
          result:=(n1*n2);
       end;
    function divicion(n1:integer;n2:integer):integer;
      begin
        result:=(n1 div n2);
        end;



    procedure operar(n1:integer;n2:integer;ope:string; var resul:integer);
    var
        res:integer;
      begin
          if(ope='-')then
             res:= 1;
            if(ope='*')then
              res:=2;
               if(ope='/')then
                 res:=3;
                 if(ope='+')then
                   res:=4;
            case res of

               1:
                  resul:=resta(n1,n2);
               2:
                 resul:=multiplicacion(n1,n2);
               3:
                 resul:=divicion(n1,n2);
               4:
                 resul:=suma(n1,n2);
             end;
  end;




begin
        writeln('ingrese numero ');
          readln(n1);
        writeln('ingrese numero ');
         readln(n2);
         writeln('ingrese operacion');
          readln(ope);
      while(n1 > 0)do begin

         operar(n1,n2,ope,resul);
            writeln(resul);
           writeln('ingrese numero ');
           readln(n1);
           if(n1=0)then exit;
          writeln('ingrese numero ');
            readln(n2);
          writeln('ingrese operacion');
            readln(ope);
        end;
        writeln(resul);
     readkey;
end.

