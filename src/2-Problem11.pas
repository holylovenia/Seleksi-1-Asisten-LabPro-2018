program Enkripsi;
uses crt;

{ Kamus }
var
  s: string; { teks terenkripsi }
  n: integer; { jumlah penggeseran karakter }
  i: integer; { untuk iterasi }

{ Algoritma }
begin
  { Membaca masukan }
  write('Masukan teks terenkripsi :'); readln(s);
  write('Masukan nilai N :'); readln(n);
  
  write('Teks aslinya adalah "');
  { Menggeser tiap karakter pada string dan menuliskan ke layar }
  for i := 1 to length(s) do begin
    { s[i] mengakses karakter ke-i pada string s

      fungsi ord akan menghasilkan:
      ord('a') = 97
      ord('b') = 98
      ord('c') = 99
      ...
      ord('z') = 122 
      
      sedangkan fungsi chr adalah inverse dari ord:
      chr(97) = 'a'
      chr(98) = 'b'
      chr(99) = 'c'
      ...
      chr(122) = 'z' }

    if ((ord(s[i]) >= ord('a')) and (ord(s[i]) <= ord('z'))) then
      { karakter s[i] adalah huruf kecil
        ord(s[i]) - ord('a') =  0 jika s[i] = 'a'
        ord(s[i]) - ord('a') =  1 jika s[i] = 'b'
        ord(s[i]) - ord('a') =  2 jika s[i] = 'c'
        ...
        ord(s[i]) - ord('a') = 25 jika s[i] = 'z' 
        
        lalu, bilangan 0..25 ditambah 26, dikurangi n, dan dimodulo 26, sehingga
        jika n =  1, 0 => 25, 1 =>  0, 2 =>  1, ..., 25 => 24
        jika n =  2, 0 => 24, 1 => 25, 2 =>  0, ..., 25 => 23
        jika n =  3, 0 => 23, 1 => 24, 2 => 25, ..., 25 => 22
        ...
        jika n = 25, 0 =>  1, 1 =>  2, 2 =>  3, ..., 25 =>  0
        jika n = 26, 0 =>  0, 1 =>  1, 2 =>  2, ..., 25 => 25
        ... }
      write(chr(((ord(s[i]) - ord('a') + 26 - n) mod 26) + ord('a')))

    else if ((ord(s[i]) >= ord('A')) and (ord(s[i]) <= ord('Z'))) then
      { karakter s[i] adalah huruf besar
        ord(s[i]) - ord('A') =  0 jika s[i] = 'A'
        ord(s[i]) - ord('A') =  1 jika s[i] = 'B'
        ord(s[i]) - ord('A') =  2 jika s[i] = 'C'
        ...
        ord(s[i]) - ord('A') = 25 jika s[i] = 'Z' 
        
        lalu, bilangan 0..25 ditambah 26, dikurangi n, dan dimodulo 26, sehingga
        jika n =  1, 0 => 25, 1 =>  0, 2 =>  1, ..., 25 => 24
        jika n =  2, 0 => 24, 1 => 25, 2 =>  0, ..., 25 => 23
        jika n =  3, 0 => 23, 1 => 24, 2 => 25, ..., 25 => 22
        ...
        jika n = 25, 0 =>  1, 1 =>  2, 2 =>  3, ..., 25 =>  0
        jika n = 26, 0 =>  0, 1 =>  1, 2 =>  2, ..., 25 => 25
        ... }
      write(chr(((ord(s[i]) - ord('A') + 26 - n) mod 26) + ord('A')))

    else
      { karakter s[i] adalah tanda baca,
        keluarkan seadanya }
      write(s[i]);
  end;
  writeln('"');

end.