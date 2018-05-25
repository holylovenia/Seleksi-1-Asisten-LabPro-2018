program Problem6_2;
{* Shevalda Gracielira/13516134
 * Menghitung uang tabungan setiap bulan
 * Asumsi lama menabung >1 bulan
 *}

var
	uang_tabungan: integer;						// uang tabungan awal
	bunga: integer;										// bunga setiap bulan (dalam persen)
	lama_menabung: integer;						// jangka waktu menabung
	uang_tabungan_sekarang: longint;	// uang tabungan untuk bulan ini
	bulan: integer;										// bulan ke berapa sekarang

begin
	write('Masukan uang tabungan :');
	readln(uang_tabungan);
	write('Masukan persen bunga :');
	readln(bunga);
	write('Masukan lama menabung :');
	readln(lama_menabung);

	uang_tabungan_sekarang := 0;
	for bulan := 1 to lama_menabung do
		begin
			uang_tabungan_sekarang := (uang_tabungan_sekarang + uang_tabungan) + (uang_tabungan_sekarang + uang_tabungan) div bunga;
			writeln('Tabungan pada bulan ke-', bulan,' = ', uang_tabungan_sekarang);
		end;
end.
