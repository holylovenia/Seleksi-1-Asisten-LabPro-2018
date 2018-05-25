program Problem5_3;
{* Shevalda Gracielira/13516134
 * Menentukan apakah Mahasiswa akan menang pada undian
 *}

var
	no_peserta : integer;

function isModSeven(number: integer) : boolean;
{* Mengecek apakah number adalah kelipatan 7 *}
	begin
		isModSeven := (number mod 7) = 0;
	end;

function isContainsSeven(number: integer) : boolean;
{* Mengecek apakah number mengandung angka 7 *}
	var
		found: boolean;
	begin
		found := false;
		while (number <> 0) and not(found) do
			begin
				if (number mod 10 = 7) then
					found := true
				else
					number := number div 10;
			end;
		isContainsSeven := found;
	end;

begin
	write('Masukan nomor peserta: ');
	readln(no_peserta);

	if isModSeven(no_peserta) and isContainsSeven(no_peserta) then
		writeln('Mahasiswa tersebut akan menang!')
	else
		writeln('Mahasiswa tersebut akan kalah!');
end.
