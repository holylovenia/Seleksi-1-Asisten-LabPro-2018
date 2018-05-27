program Bab3Problem04;
{ Menghasilkan bilangan prima diantara dua bilangan bulat A dan B }
{ ASUMSI: Masukan selalu benar }

{ KAMUS }
var
	a, b, i, min, max: longint;


{DEKLARASI DAN REALISASI FUNGSI}
function isPrima (n: longint) : boolean;
{ Menghasilkan true apabila N adalah bilangan prima }

{ KAMUS LOKAL }
var
	i, sqrtn: longint;
	notPrima: boolean;
{ ALGORITMA }
begin
	if (n < 2) then
	begin
		isPrima := false;
	end
	else { n >= 2}
	begin
		if (n = 2) then
		begin
			isPrima := true;
		end
		else { n > 2}
		begin
			notPrima := false;
			for i := 2 to round(sqrt(n)) do
			begin
				if (n mod i = 0) then
				begin
					notPrima := true;
				end;
			end;
			isPrima := not notPrima;
		end;
	end;
end;


{ ALGORITMA }
begin
	write('Masukkan nilai A : ');
	readln(a);
	write('Masukkan nilai B : ');
	readln(b);
	if (a < b) then
	begin
		min := a;
		max := b;
	end
	else {a >= b}
	begin
		min := b;
		max := a;
	end;
	writeln('Bilangan prima diantara ', min, ' sampai ', max, ' adalah:');
	for i := min to max do
	begin
		if isPrima(i) then
		begin
			writeln(i);
		end;
	end;
end.
