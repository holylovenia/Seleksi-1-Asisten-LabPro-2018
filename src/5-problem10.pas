// Nama/NIM  : Muhammad Alif Arifin/13516078
// Tema      : Percabangan -  Bab 5 Problem 10
// Deskripsi : Mencari kotak pada matriks dengan kelipatan x. x merupakan input pengguna
// Batasan   : Matriks berbentuk persegi

program bab5;

{ KAMUS }
var
    matriks : array [1..20, 1..20] of integer; // untuk menyimpan matriks
    fileMatriks : text; // file yang menyimpan matriks
    i, j, k, l, m, n, sum, factor, count : integer; // i, j, k, l untuk iterasi
                                                    // n untuk mencatat jumlah baris/kolom matriks
                                                    // sum untuk perhitungan sementara
                                                    // factor menghitung kelipatan
                                                    // count untuk menghitung jumlah tanah
    nama : string; // nama file

{ ALGORTIMA }
begin
    // nama file
    nama := 'matriks.txt';

    assign(fileMatriks, nama);
    reset(fileMatriks);

    // membaca jumlah baris/kolom
    // asumsi file sudah bener formatnya
    read(fileMatriks, n);
    for i := 1 to n do
    begin
        for j := 1 to n do
        begin
            read(fileMatriks, matriks[i,j]);
            write(matriks[i,j], ' ');
        end;
        writeln();
    end;

    // meminta input
    writeln('matriks loaded');
    write('pecahan uang: ');
    readln(factor);

    // inisialisasi
    count := 0;

    // mencoba setiap kemungkinan kotak
    // ide-nya adalah, untuk mendapatkan kotak dibutuhkan 2 ujung
    // [i, j] untuk ujung pertama dan
    // [k, l] untuk ujung kedua
    // lalu menghitung nilai dari kotak yang dibatasi 2 ujung tersebut
    // apabila merupakan kelipatan dari factor maka count (penghitung) akan ditambah 1
    // sudah dipastikan setiap kemungkinan tidak terjadi duplikasi
    for i := 1 to n do
    begin
        for j := 1 to n do
        begin
            for l := j to n do
            begin
                sum := 0;
                for k := i to n do
                begin
                    // yang diiterasi adalah kolom agar lebih cepat waktu eksekusinya
                    for m := j to l do
                        sum := sum + matriks[k, m];
                    if (sum mod factor = 0) then
                        count := count + 1;
                end;
            end;
        end;  
    end;

    writeln('Banyak bidang tanah yang dapat dibeli adalah ', count);
end.