program VirusSpread;

(* DICTIONARY *)
uses sysutils;

const
	FILENAME = 'city.txt';

var
	Size : integer;
	InFile : TextFile;
	Map : array of array of char;
	i, j : integer;
	temp : char;
	VirusCount : integer;
	Days : integer;

(* MAIN PROGRAM *)
Begin
	//FILE INIT
	assign(InFile,FILENAME);
	reset(InFile);
	readln(InFile, Size);
	setlength(Map,Size,Size);
	VirusCount := 0;
	i := 0;
	j := 0;
	//INPUT
	while not eof(InFile) do
	begin
		read(InFile, temp);
		if (temp = 'H') OR (temp = 'U') then
		begin
			Map[i,j] := temp;
			j := j + 1;
			if temp = 'U' 
			then VirusCount := VirusCount + 1;
		end;
		if j = Size then
		begin
			j := 0;
			i := i + 1;
		end;
	end;
	writeln('Matrix loaded!');
	close(InFile);
	
	//PROSES
	Days := 0;
	while (VirusCount < Size*Size) do
	begin
		//Begin the spreading - marked by X.
		for i := 0 to Size-1 do 
		begin
			for j := 0 to Size-1 do
			begin
				//If tile is 'U' (virus), then spread it to adjacent tiles, except out of bounds and already infected.
				if (Map[i,j] = 'U') then
				begin
					if ((i-1) >= 0) then
					begin
						if((Map[i-1,j] <> 'U') AND (Map[i-1,j] <> 'X')) then
						begin
							Map[i-1,j] := 'X';
							VirusCount := VirusCount + 1;
						end;
						
						if ((j-1) >= 0) then
						begin
							if((Map[i-1,j-1] <> 'U') AND (Map[i-1,j-1] <> 'X')) then
							begin
								Map[i-1,j-1] := 'X';
								VirusCount := VirusCount + 1;
							end;
						end;
						if ((j+1) < Size) then
						begin
							if((Map[i-1,j+1] <> 'U') AND (Map[i-1,j+1] <> 'X')) then
							begin
								Map[i-1,j+1] := 'X';
								VirusCount := VirusCount + 1;
							end;
						end;
					end;
					if ((i+1) < Size) then
					begin
						if((Map[i+1,j] <> 'U') AND (Map[i+1,j] <> 'X')) then
						begin
							Map[i+1,j] := 'X';
							VirusCount := VirusCount + 1;
						end;
						if ((j-1) >= 0) then
						begin
							if((Map[i+1,j-1] <> 'U') AND (Map[i+1,j-1] <> 'X')) then
							begin
								Map[i+1,j-1] := 'X';
								VirusCount := VirusCount + 1;
							end;
						end;
						if ((j+1) < Size) then
						begin
							if((Map[i+1,j+1] <> 'U') AND (Map[i+1,j+1] <> 'X')) then
							begin
								Map[i+1,j+1] := 'X';
								VirusCount := VirusCount + 1;
							end;
						end;	
					end;
					if ((j-1) >= 0) then
					begin
						if((Map[i,j-1] <> 'U') AND (Map[i,j-1] <> 'X')) then
						begin
							Map[i,j-1] := 'X';
							VirusCount := VirusCount + 1;
						end;
					end;
					if ((j+1) < Size) then
					begin
						if((Map[i,j+1] <> 'U') AND (Map[i,j+1] <> 'X')) then
						begin
							Map[i,j+1] := 'X';						
							VirusCount := VirusCount + 1;
						end;
					end;
				end;
			end;
		end;
		
		//Add a day, replace all Xs with Us.
		Days := Days + 1;
		for i:= 0 to Size-1 do
		begin
			for j := 0 to Size-1 do
			begin
				if(Map[i,j] = 'X') 
				then Map[i,j] := 'U';
			end;
		end;
		
	end;
	writeln('Lama waktu apocalypse adalah ', Days, ' hari');
End.