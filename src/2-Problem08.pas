program problem8;

var 
    A,B : integer;
    i : integer;
    j : integer;
    isPrima : boolean;
begin
    write('Masukan nilai A : '); readln(A);
    write('Masukan nilai B : '); readln(B);
    writeln('Bilangin prima diantera ',A,' sampai ',B,' adalah');
    
    for i:= A to B do
      begin
        
        isPrima := true;
        j := 2;
        
        while ( ( j <= Sqrt(i) ) and ( isPrima ) ) do
          begin 
            if (i mod j = 0 ) then
              begin
                isPrima := false;
              end;
            j := j + 1;
          end;

        if ( ( isPrima ) and ( i <> 1) ) then
            writeln(i);
      end;
end.