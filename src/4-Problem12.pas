Program Duplicate;

var
	keys			: array[1..30] of Integer;
	i, n, neff		: Integer;

function count( x : integer; arr : array of integer) : Integer;
var
	i 	: Integer;
begin
	count := 0;
	for i := 1 to neff do
	begin
		if( arr[ i ] = x )then
		begin
			count := count + 1;
		end;
	end;
end;


begin
	neff := 0;
	write( 'Masukkan jumlah kunci yang ada : ');
	readln( n );
	writeln( 'Masukkan nomor kunci yang ada :');
	for i := 1 to n do
	begin
		neff := neff + 1;
		readln( keys[i] );
	end;
	writeln( 'Kunci yang harus diduplikat :');
	for i:= 1 to neff do
	begin
		if( count( keys[ i ], keys ) = 1) then
		begin
			writeln( keys[i] );
		end;
	end;
end.
