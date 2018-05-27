Program Fx;

var
	i , input : Integer;
	found : Boolean;

function power( x , a : Integer ) : Integer;
{I.S. : x dan a terdefinisi
F.S. : mengembalikan x^a}
var
	i : Integer;
begin
	power := 1;
	for i := 1 to a do
	begin
		power := power * x;
	end;
end;

function f( x : integer ) : integer;
{I.S. : x terdefinisi
F.S. mengembalikan f(x) = 2x^5 + 3x^4 + 9x^3 − x^2 + 3x − 2}
begin
	f := 2 * power(x, 5) + 3 * power(x, 4) + 9 * power(x, 3) - power(x, 2) + 3 * x - 2;
end;

begin
	i := 1; {Inisialisasi}
	found := false;
	write( 'Masukkan f(x) :'); {Membaca Input} 
	readln( input );
	while not( found ) and ( i <= 30 ) do {Pengulangan dari 1 sampai 30}
	begin
		if ( f(i) = input ) then {Jika ditemukan f(x) = input}
		begin
			found := true;
			writeln( 'Nilai x adalah ', i);
		end;
		i := i + 1;
	end;
	if( not( found )) then {JIka tidak ditemukan f(x) = input}
	begin
		writeln( 'Tidak ada x yang sesuai' );
	end;
end.
