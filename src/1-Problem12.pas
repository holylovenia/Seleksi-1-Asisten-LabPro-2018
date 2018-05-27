program OperasiBilangan;
uses crt;

{ Kamus }
var
  a, b, c, d: integer;

{ Algoritma }
begin
  { Membaca masukan }
  write('Masukkan nilai A: '); readln(a);
  write('Masukkan nilai B: '); readln(b);
  write('Masukkan nilai C: '); readln(c);
  write('Masukkan nilai D: '); readln(d);
  
  { Memeriksa jawaban yang mungkin }
  write('Persamaan yang mungkin adalah: ');
  if (a+b = c+d) then
    writeln(a, ' + ', b, ' = ', c, ' + ', d)
  else if (a+b = c-d) then
    writeln(a, ' + ', b, ' = ', c, ' - ', d)
  else if (a+b = c*d) then
    writeln(a, ' + ', b, ' = ', c, ' * ', d)
  else if (a+b = c div d) then
    writeln(a, ' + ', b, ' = ', c, ' / ', d)

  else if (a-b = c+d) then
    writeln(a, ' - ', b, ' = ', c, ' + ', d)
  else if (a-b = c-d) then
    writeln(a, ' - ', b, ' = ', c, ' - ', d)
  else if (a-b = c*d) then
    writeln(a, ' - ', b, ' = ', c, ' * ', d)
  else if (a-b = c div d) then
    writeln(a, ' - ', b, ' = ', c, ' / ', d)

  else if (a*b = c+d) then
    writeln(a, ' * ', b, ' = ', c, ' + ', d)
  else if (a*b = c-d) then
    writeln(a, ' * ', b, ' = ', c, ' - ', d)
  else if (a*b = c*d) then
    writeln(a, ' * ', b, ' = ', c, ' * ', d)
  else if (a*b = c div d) then
    writeln(a, ' * ', b, ' = ', c, ' / ', d)

  else if (a div b = c+d) then
    writeln(a, ' / ', b, ' = ', c, ' + ', d)
  else if (a div b = c-d) then
    writeln(a, ' / ', b, ' = ', c, ' - ', d)
  else if (a div b = c*d) then
    writeln(a, ' / ', b, ' = ', c, ' * ', d)
  else if (a div b = c div d) then
    writeln(a, ' / ', b, ' = ', c, ' / ', d);

end.