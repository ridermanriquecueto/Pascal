     //Se lee una secuencia de caracteres hasta encontrar un punto, informar la longitud de la
//palabra más corta que comienza con 'a'.

//precondición: las palabras separadas por '*'
//              la última palabra termina en '* .'
//              La frase comienza con una palabra

//La casa de mi tía amarilla .

program ejercicio4_p3;
 
uses crt;
var c:char;
    cont, min:integer;

BEGIN
    min:=50;
    
    writeln('Ingrese caracter 1: ');
    readln(c);
    
    while(c <> '.')do
      begin
      
         if(c = 'a')then  //palabras que empiezan con la letra 'a'
           begin
             cont:=0;
             while(c <> '*')do
               begin
                  cont:=cont+1;
                  writeln('Ingrese caracter 2: ');
                  readln(c);
               end;
               if(cont < min)then  //longitud de la palabra más corta
                  begin
                    min:=cont;
                   end;
           end
           else  //otras palabras
             begin
                while(c <> '*')do
                  begin    
                    writeln('Ingrese caracter 3: ');              
                    readln(c);
                  end;
             
             end;
           writeln('Ingrese caracter 4: ');
           readln(c);
        
      end; 
      
     if(min = 50)then 
       begin
         writeln('No hay palabras que comiencen con a');
       end
       else
         writeln('La longitud de la palabra más corta que empieza con a es: ',min);
      
	
	readkey;
END.
                      
