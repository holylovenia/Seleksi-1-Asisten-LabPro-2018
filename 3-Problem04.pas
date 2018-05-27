program primenumbers;
var
	i, A, B : integer;
	// A : batasan awal range, B : batasan akhir range

function isPrime(x : integer) : boolean;
// Fungsi isPrime akan mengembalikan true jika x merupakan bilangan prima
var
	j : integer;
begin
	isPrime := true;
	for j:=2 to x div 2 do
	begin
		if (x mod j) = 0 then
		begin
			isPrime := false;
		end;
	end;
end;

begin
	write('Masukkan nilai A : ');
	readln(A);
	write('Masukkan nilai B : ');
	readln(B);
	writeln('Bilangan prima diantara ',A, ' sampai ',B, ' adalah:');
	if (A < B) then
	begin
		for i:=A to B do
		begin
			if (isPrime(i) = true and (i <> 0) and (i <> 1)) then
			begin
				writeln(i); // mencetak ke layar jika angka tsb merupakan bilangan prima
			end;
		end;
	end;
	if (B < A) then
	begin
		for i:=B to A do
		begin
			if (isPrime(i) = true and (i <> 0) and (i <> 1)) then
			begin
				writeln(i); // mencetak ke layar jika angka tsb merupakan bilangan prima
			end;
		end;
	end;
end.