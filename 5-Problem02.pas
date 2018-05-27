program fototuankrab;
{$IFDEF FPC}{$MODE OBJFPC}{H$H+}{$ENDIF}
// {$APPTYPE CONSOLE}
uses sysutils;
var
	matrix : array[1..100, 1..100] of integer; // matrix : matriks yang dibaca dari sebuah file
	result : array[1..199, 1..199] of integer; // result : matriks yang telah dirotasi
	N, Nrotasi : integer; // N : banyak baris dan kolom matriks, Nrotasi : banyak sebuah rotasi dilakukan
	F : TextFile; // Variabel file yang akan diread
	i, j, m, k: integer; // Variabel looping
	Fout : Text; // Variabel file yang akan diwrite
begin
	// Baca File
	assign(F, 'image.txt');
	try
	begin
		reset(F);
		readln(F, N);
		for i:=1 to N do
		begin
			for j:=1 to N do
			begin
				if (j<>N) then
				begin
					read(F, matrix[i,j]);
					read(F);
				end;
				if (j = N) then
				begin
					read(F, matrix[i,j]);
					readln(F);
				end;
			end;
		end;
		writeln('file loaded!');
		close(F);
	end;
	// Melakukan rotasi
	write('Masukkan banyak rotasi : ');
	readln(Nrotasi);
	if (Nrotasi mod 4 = 0) then
	begin
		for i:=1 to N do
		begin
			for j:=1 to N do
			begin
				result[i,j] := matrix[i,j];
			end;
		end;
	end;
	if (Nrotasi mod 4 = 1) then
	begin
		m:=1;
		for j:=N downto 1 do
		begin
			k := 1;
			for i:=1 to N do
			begin
				result[i,j] := matrix[m,k];
				k := k+1;
			end;
			m := m+1;
		end;
	end;
	if (Nrotasi mod 4 = 2) then
	begin
		m:=1;
		for i:=N downto 1 do
		begin
			k:=1;
			for j:=N downto 1 do
			begin
				result[i,j] := matrix[m,k];
				k := k+1;
			end;
			m := m+1;
		end;
	end;
	if (Nrotasi mod 4 = 3) then
	begin
		m:=1;
		for j:=1 to N do
		begin
			k:=1;
			for i:=N downto 1 do
			begin
				result[i,j] := matrix[m,k];
				k := k+1;
			end;
			m := m+1;
		end;
	end;
	// Cetak hasil ke file
	try
	begin
		assign(Fout, 'result.txt');
		rewrite(Fout);
		writeln(Fout, N);
		for i:=1 to N do
		begin
			for j:=1 to N do
			begin
				write(Fout, result[i,j]);
				if (j<>N) then
				begin
					write(Fout, ' ');
				end;
			end;
			writeln(Fout);
		end;
		close(Fout);
		writeln('result exported!');
	end;
	except
		on E : Exception do
			writeln('result file cannot be created');
	end;
	except
		on E : EInOutError do
			writeln('file is not loaded.');
	end;
end.