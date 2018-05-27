program BentengCatur;
uses crt;

{ Kamus }
var
  n: integer; { dimensi catur }
  papan: array [1..100, 1..100] of integer; { papan catur }
  fin: text; { file input }
  i, j, k: integer; { pengulangan }
  count: integer; { perhitungan benteng sementara }
  ans: integer; { jumlah benteng yang tidak melawan satu sama lain }

{ Algoritma }
begin
  { Membuka file }
  assign(fin, 'chess.txt');
  reset(fin);
 
  { Membaca masukan }
  read(fin, n);
  for i := 1 to n do
    for j := 1 to n do
      read(fin, papan[i][j]);
  writeln('matriks loaded!');
  
  { Menghitung jawaban }
  ans := 0;
  for i := 1 to n do
    for j := 1 to n do
      if (papan[i][j] = 1) then begin
        count := 0;
        { menghitung semua benteng di baris / kolom yang sama }
        for k := 1 to n do begin
          count := count + papan[i][k];
          count := count + papan[k][j];
        end;

        { di baris dan kolom hanya akan ada benteng itu sendiri,
          terhitung 2 kali di baris dan kolom.
          jika lebih, maka ada benteng di baris / kolom yang sama. }
        if (count = 2) then
          ans := ans + 1;
      end;

  
  { Menulis output dan menutup file }
  writeln('Banyaknya benteng yang tidak saling serang adalah ', ans);
  close(fin);

end.