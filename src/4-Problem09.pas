program Turunan;
uses crt;

{ Kamus }
var
  derajat: integer; { derajat polinom }
  polinom: array [1..100] of integer; { koefisien polinom }
  i: integer; { pengulangan }

{ Algoritma }
begin
  { Membaca masukan }
  write('Masukkan pangkat paling besar : '); readln(derajat);
  for i := derajat downto 0 do begin
    write('Masukkan koefisien x^2 : '); readln(polinom[i]);
  end;
  
  { Menghitung turunan }
  for i := 0 to derajat-1 do
    polinom[i] := (i+1) * polinom[i+1];

  polinom[derajat] := 0;
  derajat := derajat - 1;

  { Menuliskan polinom }
  write('Maka hasil turunannya adalah ');
  for i := derajat downto 0 do begin
    write(polinom[i], 'x^', i);
    if (i > 0) then
      write(' + ');
  end;
  writeln;

end.