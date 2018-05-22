// Fungsi untuk menghitung a pangkat b
function power(a, b: longint): longint;
// Kamus lokal
var
    res : longint;  // Jawaban
    pow : longint;  // Pangkat
    x : longint;    // Angka yang akan dipangkatkan
// Algoritma
begin
    res := 1;
    pow := b;
    x := a;

    // Selama pangkat belum nol
    while(pow > 0) do begin
        // Jika pangkat ganjil
        if(pow mod 2 = 1) then
            res := res * x;
        pow := pow div 2;
        x := x*x;
    end;

    power := res;
end;

// Program utama
// Kamus
var
    a : longint;    // Angka yang akan dipangkatkan
    b : longint;    // Pangkat

// Algoritma
begin
    write('Masukan A : ');
    readln(a);
    write('Masukan B : ');
    readln(b);

    write(a, '^', b, ' = ', power(a,b));
end.