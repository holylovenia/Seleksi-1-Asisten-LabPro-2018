Program Percabangan;

var
	nama : string;
	nilai : integer;
	grade: char;
		
Begin
	write('Masukkan nama: ');
	readln(nama);

	write('Masukkan nilai: ');
	readln(nilai);

	if (nilai >= 81) then
		grade:='A'
	else if (nilai >= 61) and (nilai < 81) then
		grade:='B'
	else if (nilai >= 41) and (nilai < 61) then
		grade:='C'
	else if (nilai >= 21) and (nilai < 41) then
		grade:='D'
	else
		grade:='E';

	writeln(nama, ' mendapat nilai ', grade);
end.