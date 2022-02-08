 {7. Escribir un procedimiento que acepte como parámetro un vector que puede contener
elementos duplicados. El procedimiento debe sustituir cada valor repetido por -5, devolver
el número de entradas modificadas y la posición de dichas entradas en el vector.}
program ejer7_pract5;
uses crt;
  type
       vector=array[1..10] of integer;

     procedure inicializar_vector(var v:vector);
      var
          i:integer;
          begin
          for i:=1 to 10 do begin
            v[i]:=0;
          end;
        end;
      procedure cargar_vector(var v:vector);
     var
        i:integer;
         begin
             for i:= 1 to 10 do begin
                  writeln('ingrese numro: ' ,i);
                  readln(v[i]);
              end;
          end;
      procedure ordenar_vector(var v:vector);
      var i,j,aux :integer;
      begin
        for i:= 1 to 10 do begin
           for j:= 1 to 9 do begin
              if(v[j]>v[j+1])then begin
                 aux:=v[j+1];
                 v[j+1]:=v[j];
                  v[j]:=aux;
               end;
           end;
        end;
       end;
    procedure recorrer_vector( var v:vector);
    var
       i:integer;
       begin
          for i:= 2 to 10 do begin
             if (v[i]=v[i-1])then
                 v[i]:=-5;
          end;
        end;
     procedure imprimir_vec(v:vector);
        var
           i:integer;
            begin
                 for i:=1 to 10 do begin
                    write(v[i], ' | ');
                  end;
             end;
 var
   i:integer;
   v:vector;
begin
          inicializar_vector(v);
          cargar_vector(v);

          writeln('imprime vector');
          writeln('-----------------------------------------------');
          imprimir_vec(v);
          writeln();
          ordenar_vector(v);
          writeln('imprime vectopr ordenado');
          writeln('------------------------------------------------');
          imprimir_vec(v);
          writeln();
          recorrer_vector(v);
          writeln('imprime vector cambiado');
          writeln('-------------------------------------------------');
          imprimir_vec(v);
          readkey;
end.
//opcion 2 de la practoca 5 ejercicios7
{program ejer7_pract5;
uses crt;
  type
       vector=array[1..10] of integer;

     procedure inicializar_vector(var v:vector);
      var
          i:integer;
          begin
          for i:=1 to 10 do begin
            v[i]:=0;
          end;
        end;
      procedure cargar_vector(var v:vector);
     var
        i:integer;
         begin
             for i:= 1 to 10 do begin
                  writeln('ingrese numro: ' ,i);
                  readln(v[i]);
              end;
          end;

    procedure recorrer_vector( var v:vector);
    var
       j,i:integer;
       begin
          for j:= 1 to 10 do begin
             for i:= j+1 to 10 do begin
               if(v[j])=(v[i])then
                  v[i+1]:=-5;
               end;
           end;
        end;
     procedure imprimir_vec(v:vector);
        var
           i:integer;
            begin
                 for i:=1 to 10 do begin
                     write(v[i], ' | ');
                  end;
             end;
 var
   i:integer;
   v:vector;
begin
          inicializar_vector(v);
          cargar_vector(v);
          writeln('imprime vector');
          writeln('--------------------------------------------------------------------');
          imprimir_vec(v);
          writeln();
          writeln('---------------------------------------------------------------------');
          writeln();
          recorrer_vector(v);
          writeln('imprime vector cambiado');
          writeln('----------------------------------------------------------------------');
          imprimir_vec(v);
          writeln();
          writeln('-----------------------------------------------------------------------');
          readkey;
end.   }
