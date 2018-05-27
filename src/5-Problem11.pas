program Bab5Problem11;

type
	Matriks = array[1 .. 255, 1 .. 255] of integer;
	
procedure ReadFile(var nBrs : integer; var nKol : integer; var M : Matriks);
var
	inputFile : TextFile;
	i : integer;
	j : integer;
	
begin
	assign(inputFile,'queue.txt');
	reset(inputFile);
	read(inputFile, nBrs);
	read(inputFile, nKol);
	for i := 1 to nBrs do
	begin
		for j := 1 to nKol do
		begin
			read(inputFile, M[i][j]);
		end;
	end;
	writeln('file loaded!');
end;

function antrianTerpanjang(nBrs : integer; nKol : integer; M : Matriks):integer;
var
	i : integer;
	j : integer;
	found : boolean;
begin
	found := false;
	i := 1;
	j := 1;
	while (not found) and (j <= nKol) do
	begin
		if (M[i][j] = 1) then
		begin
			found := true;
		end else
		if (i <= nBrs) then
		begin
			inc(i);
		end else
		begin
			i := 1;
			inc(j);
		end;
	end;
	antrianTerpanjang := nKol - j + 1;
end;
var
	jumlahKasir : integer;
	slotAntrian : integer;
	KrastiKrab : Matriks;

begin
	ReadFile(jumlahKasir, slotAntrian, KrastiKrab);
	writeln('Antrian terpanjang adalah ', antrianTerpanjang(jumlahKasir, slotAntrian, KrastiKrab));
end.