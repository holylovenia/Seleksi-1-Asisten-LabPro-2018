program Bab1Problem06;
{ Menghitung uang sewa berdasarkan harga sewa pokok, batas waktu sewa, tambahan harga sewa, dan lama peminjaman }
{ ASUMSI: semua masukan merupakan bilangan bulat positif }

{ KAMUS }
var
	hargaSewaPokok, batasWaktuSewa, tambahanHargaSewa, lamaMeminjam, hargaSewaTotal : longint;

{ ALGORITMA }
begin
	{Inisialisasi-aksi}
	write('Masukan harga sewa pokok: ');
	readln(hargaSewaPokok);
	write('Masukan batas waktu sewa: ');
	readln(batasWaktuSewa);
	write('Masukan tambahan harga sewa: ');
	readln(tambahanHargaSewa);
	write('Masukan lama Tuan Vin meminjam: ');
	readln(lamaMeminjam);
	
	if (lamaMeminjam <= batasWaktuSewa) then
	begin
		hargaSewaTotal := lamaMeminjam * hargaSewaPokok;
	end
	else
	begin
		hargaSewaTotal := batasWaktuSewa * hargaSewaPokok + (lamaMeminjam - batasWaktuSewa) * (hargaSewaPokok + tambahanHargaSewa);
	end;
	writeln('Harga sewa yang harus dibayar Tuan Vin adalah: ', hargaSewaTotal);
end.
