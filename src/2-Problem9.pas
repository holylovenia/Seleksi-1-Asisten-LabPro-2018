// Fungsi untuk menghitung euclidean distance
function euclidDist(x1, y1, x2, y2: real): real;
// Kamus Lokal
var
    diff1, diff2 : real;

// Algoritma
begin
    diff1 := x1 - y1;
    diff2 := x2 - y2;
    euclidDist := sqrt(diff1*diff1 + diff2*diff2);
end;

// Program Utama
// Kamus
var
    mahasiswaX, mahasiswaY : real;      // Koordinat mahasiswa
    percetakanX, percetakanY : real;    // Koordinat percetakan
    nPercetakan : integer;              // Jumlah percetakan
    closestPercetakan : integer;        // Percetakan terdekat
    currentDist : real;                 // Jarak percetakan terdekat
    tmpDist : real;                     // Jarak percetakan sementara
    i : integer;                        // Variabel iterasi

// Algoritma
begin
    // Masukan program
    writeln('Masukan lokasi mahasiswa tersebut  ');
    write('X :');
    readln(mahasiswaX);
    write('Y :');
    readln(mahasiswaY);

    write('Masukan banyaknya percetakan :');
    readln(nPercetakan);

    currentDist := 9999999;
    for i := 1 to nPercetakan do
        begin
            writeln('Masukan posisi percetakan ', i);
            write('X :');
            readln(percetakanX);
            write('Y :');
            readln(percetakanY);

            // Mencari jarak percetakan terdekat
            // Jika ada percetakan yang lebih dekat,
            // ganti jawaban dengan percetakan tersebut
            tmpDist := euclidDist(percetakanX, percetakanY, mahasiswaX, mahasiswaY);
            if(tmpDist < currentDist) then
            begin
                closestPercetakan := i;
                currentDist := tmpDist;
            end;
        end;

    writeln('Pedagang terdekat adalah pedagang ', closestPercetakan);
end.