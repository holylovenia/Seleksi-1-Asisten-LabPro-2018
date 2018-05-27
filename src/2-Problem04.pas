Program Pengulangan;

var
	n, i, nilai, lulus, tidaklulus:integer;

Begin
	write('Banyak mahasiswa: ');
	readln(n);
	lulus:=0;
	tidaklulus:=0;
	for i:= 1 to n do
	Begin
		write('Nilai anak ke -',i,' :');
		readln(nilai);
		if (nilai >= 60) then
		Begin
			lulus := lulus + 1;
		end else
		Begin
			tidaklulus := tidaklulus + 1;
		end;
	end;
	writeln('Total mahasiswa yang lulus adalah ',lulus);
	writeln('Total mahasiswa yang tidak lulus adalah ',tidaklulus);
end.