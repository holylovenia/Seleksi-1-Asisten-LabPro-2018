program Bab5Problem01;
{ Menghasilkan benar apabila matriks pada matriks.txt adalah matriks bisimetris }
{ ASUMSI: selalu terdapat file matriks.txt dan file tersebut selalu memiliki format masukan yang benar }

{ KAMUS }
var
	fin: text;
	n, i, j: longint;
	matriks: array [1..1000] of array [1..1000] of longint;
	isBysimmetrix: boolean;

{ ALGORITMA }
begin
	assign(fin, 'matriks.txt');
	reset(fin);
	read(fin, n);
	for i := 1 to n do
	begin
		for j := 1 to n do
		begin
			read(fin, matriks[i][j]);
		end;
	end;
	writeln('matriks loaded!');
	close(fin);
	
	isBysimmetrix := true;

	for i := 1 to n do
	begin
		for j := 1 to n do
		begin
			if (matriks[i][j] <> matriks[j][i]) or (matriks[i][j] <> matriks[n-j+1][n-i+1]) then
			begin
				isBysimmetrix := false;
			end;
		end;
	end;
	
	if isBysimmetrix then
	begin
		writeln('Yes');
	end
	else {not Bysimmetrix}
	begin
		writeln('No');
	end;

end.
