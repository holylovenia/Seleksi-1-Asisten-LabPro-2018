// Nama/NIM  : Muhammad Alif Arifin/13516078
// Tema      : Array - Bab 4 Problem 11
// Deskripsi : Menghitung jumlah kemunculan di array
// Batasan   : - 
// Asumsi    : 1) NIM 004 dengan 04 sama 
//             2) jumlah input tidak lebih dari 100

program bab4;

{ KAMUS }
var
    nim : array[1..100] of smallint; // menyimpan nim
    n, i, j, count, temp : integer; // n = mencatat jumlah nim
                                    // i, j = untuk iterasi loop
                                    // count = untuk pencatatan
                                    // temp = untuk penampung sementara

begin
    write('Masukkan jumlah kertas kehadiran: ');
    readln(n);

    if (n > 100) then
        writeln('Maaf, jumlah maksimum adalah 100')
    // input valid (kalaupun non positif tidak akan masuk loop)
    else 
    begin
        // meminta input
        for i := 1 to n do
        begin
            // melakukan validasi
            repeat
                write('Masukkan NIM mahasiswa: ');
                readln(temp);
            until ((temp > 0) and (temp < 1000));
            nim[i] := temp;
        end;

        // melakukan pencatatan
        writeln('Rekap kehadiran mahasiswa:');
        for i := 1 to n do
        begin
            // jika nim tidak valid
            if (nim[i] <> -1) then
            begin                        
                count := 1;
                for j := (i + 1) to n do
                begin
                    if (nim[i] = nim[j]) then
                    begin
                        count := count + 1;
                        nim[j] := -1; // agar tidak diakses kembali
                    end;
                end;
                writeln(nim[i], ' - ', count, ' kali');
            end;
        end;
    end;
end.