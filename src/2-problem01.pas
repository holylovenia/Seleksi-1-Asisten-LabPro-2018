// Nama/NIM  : Muhammad Alif Arifin/13516078
// Tema      : Pengulangan - Bab 2 Problem 1
// Deskripsi : Mencetak selain kelipatan 3 dan 7 kecuali kelipatan 3 * 7 (21)
// Batasan   : -

program bab2;

{ KAMUS }
var
    n, i : integer; // n = menyimpan batas atas
                    // i = untuk iterasi

{ ALGORITMA }
begin
    write('Masukan N: ');
    readln(n);

    for i := 1 to n do
    begin
        // i merupakan angka selain kelipatan 3 atau 7 namun boleh kelipatan 3 * 7 (21)
        if (not((i mod 3 = 0) xor (i mod 7 = 0))) then
            writeln(i);
    end; 
end.