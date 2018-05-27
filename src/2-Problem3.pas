program Bab2Problem3;

procedure printDeret(n : integer);
{Mencetak deret fibonacci dengan improvisasi sesuai permintaan soal}
var
	i : integer;
	nPrevious : integer;
	nCurrent : integer;
	temp : integer;
begin
	if (n > 0) then
	begin
		nPrevious := 0;
		nCurrent := 1;
		writeln(n, ' bilangan pertama dari deret adalah');
		for i := 1 to n do
		begin
			writeln(nCurrent);
			temp := nCurrent;
			nCurrent += nPrevious;
			nPrevious := temp;
			if (nCurrent mod 3 = 0) then
			begin
				inc(nCurrent);
			end;
		end;
	end;
end;

var 
	nBilangan : integer;

begin
	write('Masukkan banyaknya bilangan :');
	readln(nBilangan);
	printDeret(nBilangan);
end.
