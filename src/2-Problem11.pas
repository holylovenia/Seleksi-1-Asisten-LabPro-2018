program bab2problem11;

const
MIN_UPPER = Ord('A');
MAX_UPPER = Ord('Z');
MIN_LOWER = Ord('a');
MAX_LOWER = Ord('z');

var
input, output : string;
n, i, asciiValue, max, min: integer;
alphabet : boolean; { menentukan apakah suatu karakter yang dibaca ada dalam alphabet atau tidak }
begin
	write('Masukan teks terenkripsi :');
	readln(input);
	write('Masukan nilai N :');
	readln(n);
	{ inisialisasi nilai output }
	output := input;
	for i := 1 to length(input) do
	begin
		{ mencari nilai ASCII karakter yang dibaca }
		asciiValue := Ord(input[i]);
		{ jika nilai ASCII di antara nilai minimal dan maksimal uppercase, enkripsi di bagian uppercase  }
		if ((asciiValue >= MIN_UPPER) and (asciiValue <= MAX_UPPER)) then
		begin
			alphabet := True;
			max := MAX_UPPER;
			min := MIN_UPPER;
		end
		{ jika nilai ASCII di antara nilai minimal dan maksimal lowercase, enkripsi di bagian lowercase  }
		else if ((asciiValue >= MIN_LOWER) and (asciiValue <= MAX_LOWER)) then
		begin
			alphabet := True;
			max := MAX_LOWER;
			min := MIN_LOWER;
		end
		{ jika tidak ada di keduanya, bukan alpabet }
		else alphabet := False;
		if (alphabet) then
		begin
			{ mendekripsi nilai ascii }
			asciiValue := asciiValue - n;
			{ penanganan jika nilai hasil deksripsi tidak dalam jangkauan alphabet lower/uppercase }
			while (asciiValue <= min) do
			begin
				asciiValue := asciiValue + 26
			end;
			while (asciiValue >= max) do
			begin
				asciiValue := asciiValue - 26
			end;
			{ mencari karakter dari nilai ascii yang telah didekripsi, dimasukkan ke dalam output }
			output[i] := chr(asciiValue);
		end
	end;
	writeln('Teks aslinya adalah "',output,'"');
end.