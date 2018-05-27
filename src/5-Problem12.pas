Program Matriks_FileEksternal;

function Min ( a ,b, c: integer) : integer;
Begin
	if (a <= b) then
	Begin
		if (a <= c) then
		Begin
			Min:=a;
		end else
		Begin
			Min:=c;
		end;
	end else
	Begin
		if (b <= c) then
		Begin
			Min:=b;
		end else
		Begin
			Min:=c;
		end;
	end;
end;

function Max (a,b : integer) : integer;
Begin
	if (a >= b) then
	Begin
		Max:=a;
	end else
	Begin
		Max:=b;
	end;
end;

{Main program}
var
	inputfile: TextFile;
	size,i,j, maxSize: integer;
	contour : array of array of integer;
	squareSize : array of array of integer;
Begin
	//read file
	assign(inputfile, 'contour.txt');
	reset (inputfile);
	readln(inputfile, size);
	SetLength(contour, size, size);
	SetLength(squareSize, size, size);
	for i:=0 to size-1 do
	Begin
		for j:=0 to size-1 do
		Begin
			read(inputfile, contour[i][j]);
		end;
	end;
	close(inputfile);
	writeln('File loaded!');
	
	//proses
	maxSize := 1;
	for i:=0 to size-1 do
	Begin
		for j:=0 to size-1 do
		Begin
			if (i = 0) or (j = 0) then //baris paling atas dan kolom paling kiri tidak dapat membentuk persegi dikarenakan posisi (i,j) yang berada di titik paling kanan bawah persegi.
			Begin
				squareSize[i][j]:= 1;
			end else
			Begin
				if (contour[i][j] = contour[i][j-1]) and (contour[i][j] = contour[i-1][j]) and (contour[i][j] = contour[i-1][j-1]) then
				Begin
					squareSize[i][j]:= Min(squareSize[i][j-1] , squareSize[i-1][j], squareSize[i-1][j-1]) + 1;
				end else
				Begin
					squareSize[i][j]:=1;
				end;
				maxSize:=Max(maxSize, squareSize[i][j]); //mencari size terbesar
			end;
		end;
	end;
	writeln('Luas maksimum Krasti Krab yang dapat dibangun adalah ',maxSize*maxSize);
end.
