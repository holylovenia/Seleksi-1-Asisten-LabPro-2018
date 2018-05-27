// Nama/NIM  : Muhammad Alif Arifin/13516078
// Tema      : Fungsi dan Prosedur - Bab 3 Problem 12
// Deskripsi : Menghitung f(g(f(x))) dengan
//              f(x) = 2x − 9
//              g(x) = x^3 + 7
// Batasan   : - 

program bab3;

{ KAMUS }
var
    x : integer; // untuk menyimpan input pengguna

{ FUNGSI DAN PROSEDUR }
function fx(x : integer) : integer;
// fungsi fx akan meminta input berupa x (variable)
// dan akan mengembalikan hasil dari fungsi f(x)
// fungsi f(x) = 2x − 9

{ KAMUS LOKAL }

{ ALGORITMA }
begin
    fx := 2 * x - 9;
end;

function gx(x : integer) : integer;
// fungsi gx akan meminta input berupa x (variable)
// dan akan mengembalikan hasil dari fungsi g(x)
// fungsi g(x) = x^3 + 7

{ KAMUS LOKAL }

{ ALGORITMA }
begin
    gx := x * x * x + 7;
end;

{ ALGORITMA }
begin
    write('Masukan nilai: ');
    readln(x);
    writeln('f(g(f(x))) = ', fx(gx(fx(x))));
end.