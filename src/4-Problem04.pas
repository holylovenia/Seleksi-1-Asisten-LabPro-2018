program problem404;

{Kamus Global}
var
    found: boolean;
    length,i, x : integer;
    cars: array of integer;

function min(numbers: array of integer; length: integer): integer;
{Menerima input berupa array of integer, dan length yang merupakan panjang dari array tersebut
mengembalikan nilai minimum yang ada di array tersebut, array tidak kosong.}
{Kamus Lokal}
var
    i : integer;

{Algoritma Lokal}
begin
    {Inisialisai nilai minimal}
    min:= numbers[0];
    for i:= 0 to (length-1) do
    begin
        if (numbers[i] <= min) then
        begin
            min:= numbers[i];
        end
        else
        begin
            min:= min
        end;
    end;
end;

function iFind(numbers: array of integer; x, length: integer): integer;
{Menerima input berupa array of integer, x yang merupakan bilangan yang akan dicari
dan length yang merupakan panjang dari array tersebut. akan mengembalikan indeks dimana 
bilangan x ditemukan, jika tidak ada mengembalikan nilai -1, array tidak kosong.}
{Kamus Lokal}
var
    i: integer;
    found: boolean;

{Algoritma Lokal}
begin
    i:= 0;
    found := false;
    while ((not found) and (i < length)) do 
    begin
        if (numbers[i] = x) then
        begin
            found := true;
        end
        else
        begin
            i := i+1;
        end;
    end;
    if (found) then
        iFind := i
    else
        iFind := -1;
end;

{Algoritma Utama}
begin
    {Menerima masukan jumlah mobil yang ada}
    write('Masukkan jumlah mobil : ');
    readln(length);
    {Jika jumlah mobil yang dimasukkan lebih dari 0}
    if(length > 0 ) then
    begin
        SetLength(cars, length);
        write('Masukkan ');
        write(length);
        writeln(' nomor mobil yang ada:');
        {Input nomor/ nomor-nomor ke dalam array}
        for i := 0 to (length-1) do
        begin
            readln(x);
            cars[i] := x;
        end; 
        found:= false;

        {Mencari apakah ada nomor yang dilompat}
        i := min(cars, length);
        while((not found) and (i <= (min(cars, length)+length-1))) do
        begin
            if (iFind(cars, i, length) = -1) then
            begin
                found := true;
            end
            else
            begin
                i := i+1;
            end;
        end;
        if (found) then
        begin
            write('Mobil Charlie adalah mobil dengan nomor ');
            writeln(i);
        end
        else
        begin
            writeln('Tidak ada mobil yang merupakan mobil Charlie');
        end;
    end
    {Jika jumlah mobil yang dimasukkan <= 0}
    else
    begin
        writeln('Tidak ada mobil yang merupakan mobil Charlie');
    end;
end.