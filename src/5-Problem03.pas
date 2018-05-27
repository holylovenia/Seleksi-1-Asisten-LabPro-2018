program problem503;

{Deklarasi konstanta}
const
    {Nama file input}
    FNAME = 'result.txt';

{Deklarasi tipe variable}
type
    {Matriks karakter yang dinamik}
    MatrixChar = array of array of char;

{Kamus Global}
var
    f: text;
    x: string;
    n, i, j: integer;
    map: MatrixChar;
    win: boolean;
    winner: char;

function cekBaris(map: MatrixChar; length, baris: integer): boolean;
{Menerima input berupa matriks karakter, length yang merupakan panjang sisi matriks,
baris yang merupakan indeks baris yang akan dicek, indeks dimulai dari 0. 
Fungsi akan mengembalikan true jika baris yang dicek memiliki karakter yang sama
dan mengembalikan false jika ada yang tidak sama.}

{Kamus Lokal}
var
    i: integer;
    diff: boolean;

{Algoritma Lokal}
begin
    i:= 0;
    diff:= false;
    while((not diff) and (i <= (length-2))) do 
    begin
        if(map[baris][i] = map[baris][i+1]) then
        begin
            i:= i+1
        end
        else
        begin
            diff := true;
        end;
    end;
    cekBaris := not diff;
end;

function cekKolom(map: MatrixChar; length, kolom: integer): boolean;
{Menerima input berupa matriks karakter, length yang merupakan panjang sisi matriks,
kolom yang merupakan indeks kolom yang akan dicek, indeks dimulai dari 0. 
Fungsi akan mengembalikan true jika kolom yang dicek memiliki karakter yang sama
dan mengembalikan false jika ada yang tidak sama.}

{Kamus Lokal}
var
    i: integer;
    diff: boolean;

{Algoritma Lokal}
begin
    i:= 0;
    diff:= false;
    while((not diff) and (i <= (length-2))) do 
    begin
        if(map[i][kolom] = map[i+1][kolom]) then
        begin
            i:= i+1
        end
        else
        begin
            diff := true;
        end;
    end;
    cekKolom := not diff;
end;

function cekDiagonal(map: MatrixChar; length: integer): boolean;
{Menerima input berupa matriks karakter, length yang merupakan panjang sisi matriks, 
Fungsi akan mengembalikan true jika diagonal matriks memiliki karakter yang sama
dan mengembalikan false jika ada yang tidak sama.}

{Kamus Lokal}
var
    i: integer;
    diff: boolean;

{Algoritma Lokal}
begin
    i:= 0;
    diff:= false;
    while((not diff) and (i <= (length-2))) do 
    begin
        if(map[i][i] = map[i+1][i+1]) then
        begin
            i:= i+1
        end
        else
        begin
            diff := true;
        end;
    end;
    cekDiagonal := not diff;
end;

{Algoritma Utama}
begin
    {Pembacaan File dan memasukkan ke dalam matriks}
    assign(f, FNAME);
    reset(f);
    readln(f, x);
    n := Integer(x[1])-48;
    if (n > 0) then 
    begin
        SetLength(map, n);
        for i:= 0 to (n-1) do
        begin
            SetLength(map[i], n);
        end;
        i:=0;
        while not eof(f) do
        begin
            readln(f, x);
            for j:= 0 to (n-1) do
            begin
                map[i][j]:= x[j+1];
            end; 
            i := i+1;
        end;
    end;
    writeln('result loaded!');
    close(f);

    {Pencarian dalam matriks}
    if (n > 0) then
    begin
        win:= false;
        i:=0;
        winner := '-';
        if (cekDiagonal(map, n)) then
        begin
            winner:= map[1][1];
        end
        else
        begin
            while ((not win) and (i < n)) do
            begin
                if (cekBaris(map, n, i)) then
                begin
                    winner := map[i][1];
                    win := true;
                end
                else if (cekKolom(map, n, i)) then
                begin
                    winner := map[1][i];
                    win:= true;
                end
                else
                begin
                    i:= i+1;
                end;
            end;
        end;
        {Penentuan pemenang}
        if(winner = 'o') then
        begin
            writeln('Pemenangnya adalah Anda');
        end
        else if (winner = 'x') then
        begin
            writeln('Pemenangnya adalah Tuan Krab');
        end
        else
        begin
            writeln('Tidak ada pemenang');
        end;
    end
    else
    begin
        writeln('Tidak ada pemenang');
    end;
end.