program ejer2_unlp;
uses crt;
type
 producto=record
          precio:real;
          codigo:integer;
          tipo:string[4];
          end;
var
   p:producto;
   i,codmin,codmax:integer;

   procedure leer (p:producto);
   begin
             writeln('ingrese precio del producto');
             readln(p.precio);
             writeln('ingrese codigo del producto');
             readln(p.codigo);
             writeln('ingrese tipo del producto');
             readln(p.tipo);
             end;

   procedure ver_producto(codigo:integer;precio:real;var codmax:integer;var codmin:integer);
    var
       preciomax,preciomin:real;

    begin
    preciomax:=0;
            preciomin:=999;
         if(precio>preciomax)then begin
            preciomax:=precio;
            codmax:=codigo;
            end;
         if(precio<preciomin)then begin
            preciomin:=precio;
            codmin:=codigo;
            end;
            end;


   begin

       codmin:=99;
       codmax:=0;

       for i:=1 to 3 do begin
          leer (p);
          ver_producto(p.codigo,p.precio,codmax,codmin);
         end;
         writeln('el codigo producto mas barato es:',codmin);
         writeln('el codigo producto mas caro pantalon: ',codmax);
         readkey;
         end.




