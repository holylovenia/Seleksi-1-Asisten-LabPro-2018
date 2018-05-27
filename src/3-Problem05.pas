program problem305;

{Kamus Global}
var
    noPeserta : integer;

function containSeven(nomor: integer): boolean;
{Fungsi akan mengembalikan true jika nomor mengandung
angka 7 dan mengembalikan false jika tidak ada angka 7}
{Kamus Lokal}
var
    found: boolean;
    temp : integer;

{Algoritma Lokal}
begin
    found:= false;
    while ((not found) and (nomor <> 0)) do
    begin
        temp := nomor mod 10;
        if(temp = 7) then
            found := true
        else
        begin
            nomor:= nomor div 10;
        end;
    end;
    containSeven := found;
end;

function isWin(noUrut: integer): boolean;
{Fungsi akan mengembalikan true jika noUrut mengandung
angka 7 dan habis dibagi 7, dan false jika tidak}
{Algoritma Lokal}
begin
    isWin := ((noUrut mod 7 = 0) and (containSeven(noUrut)));
end;

{Algoritma Utama}
begin
    {Menerima masukan nomor urut}
    write('Masukan nomor peserta: ');
    readln(noPeserta);

    {Menentukan apakah nomor urut menang atau tidak}
    if(isWin(noPeserta))then
        writeln('Mahasiswa tersebut akan menang!')
    else
        writeln('Mahasiswa tersebut akan kalah!');
end.