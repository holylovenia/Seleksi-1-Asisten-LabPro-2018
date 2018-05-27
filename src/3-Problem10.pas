program OperasiBilangan;
uses crt;

{ Kamus }
function fact(n: integer): integer;
{ fact(n) menghasilkan n! }
var
  i: integer; { pengulangan }
begin
  fact := 1;
  for i := 1 to n do
    fact := fact * i;
end;

var
  n: integer; { bilangan yang mau dicari nilai faktorialnya }

{ Algoritma }
begin
  { Membaca masukan }
  write('Masukkan N: '); readln(n);
  
  { Menuliskan keluaran
    dengan memanggil fungsi yang sudah dituliskan di atas }
  writeln('N! = ', fact(n));

end.