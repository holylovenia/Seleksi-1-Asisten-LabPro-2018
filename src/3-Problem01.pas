// Nama : Rizki Alif Salman Alfarisy
// NIM : 13516005
// Bab : 1 - Fungsi dan Prosedur
// Problem : 1

program F(X);

var
   result : Longint;
   x : integer; 

function f(x : integer) : Longint;
begin
    f := 2*x*x*x*x*x+3*x*x*x*x+9*x*x*x- x*x+ 3*x -2;
end;

begin
    write('Masukan f(x):');
    readln(result);
    
    x:=1;
    while ((x < 30) and (f(x)<>result)) do 
        x:=x+1;
    
    if (x < 30) then writeln('Nilai x adalah ',x)
    else writeln('Tidak ada x yang sesuai');
end.
    