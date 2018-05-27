Program FactorType;

var
	i, x, y : Integer;
	numType : Char;
    numExist : Boolean;


function sumFactors( x : integer) : integer;
{I.S. X terdefinisi
F.S. mengembalikan jumlah faktor -faktor dari X}
var
    sum, i : integer;
begin
    sum := 0;
    for i:=1 to x-1 do
    begin
        if( x mod i = 0) then
        begin
            sum := sum + i;
        end;
    end;
    sumFactors := sum;
end;

begin
	write( 'Masukkan X :' ); {Membaca Input}
    readln( x );
    write( 'Masukkan Y :' );
    readln( y );
    write( 'Masukkan tipe bilangan  :' );
    readln( numType );
    numExist := false;
    writeln( 'Jumlah bilangan ', numType , ' pada rentang ', x , ' sampai ' , y , ' adalah' );
    for i := x to y do {Memulai traversal dari X hingga Y}
    begin
        if( numType = 'A') then {Jika dicari bilangan tipe A}
        begin
            if( sumFactors(i) < y ) then
            begin
                writeln(i);
                numExist := true;
            end
        end else if ( numType = 'B') then {Jika dicari bilangan tipe B}
        begin
            if( sumFactors(i) = y ) then
            begin
                writeln(i);
                numExist := true;
            end
        end else if ( numType = 'C') then {Jika dicari bilangan tipe C}
        begin
            if( sumFactors(i) > y ) then
            begin
                writeln(i);
                numExist := true;
            end
        end;
    end;
    if( numExist = false ) then {Jika bilangan tidak ditemukan}
    begin
        writeln('Tidak ada');
    end;
end.


