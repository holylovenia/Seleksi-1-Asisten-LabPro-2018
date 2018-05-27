program problem7;

var
    row : real;
    i,j : real;

function faktorial(x : real) : real;
begin
    if (x = 0) then
    begin    
        faktorial := 1;
    end
    else
    begin
        faktorial := x*faktorial(x-1);
    end;
end;

function C(n : real; r : real) : real ;
begin
    C:= faktorial(n) / ( faktorial(r) * faktorial(n-r) );
end;

begin
    write('Masukan jumlah baris : '); readln(row);
    i := 0;
    while ( i < row ) do
    begin
        j := 0;
        while (j <= i) do
        begin
            write(C(i,j):0:0,' ');
            j := j + 1;
        end;
        i := i + 1;
        writeln;
    end;
end.
