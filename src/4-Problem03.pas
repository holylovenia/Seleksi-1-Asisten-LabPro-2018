program Problem3_4;
{* Shevalda Gracielira/13515134
 * Menentukan tamu yang memenangkan hadiah
 * Tamu yang memenangkan hadiah adalah tamu yang mempunyai nomor unik fibonnaci
 * Asumsi 1 <= jumlah tamu <= 100
 *}

var
	jumlah_tamu: integer;									// jumlah tamu yang datang
	nama_tamu: array [1..100] of string;	// daftar tamu yang datang
	tamu_ke, nomor: integer;

function fibonnaci(n: integer) : integer;
{* Menghasilkan angka Fibbonaci ke-n secara rekursif *}
	begin
		if n = 1 then
			fibonnaci := 1
		else if n = 2 then
			fibonnaci := 2
		else
			begin
				fibonnaci := fibonnaci(n-1) + fibonnaci(n-2);
			end;
	end;

begin
	write('Masukkan jumlah tamu : ');
	readln(jumlah_tamu);

	for tamu_ke := 1 to jumlah_tamu do
		begin
			write('Masukan nama tamu ', tamu_ke,' : ');
			readln(nama_tamu[tamu_ke]);
		end;

	writeln('Tamu yang akan mendapat hadiah adalah :');
	nomor := 1;
	while (fibonnaci(nomor) =< jumlah_tamu) do
		begin
			writeln(nama_tamu[fibonnaci(nomor)]);		// Mencetak nama tamu urutan Fibonnaci ke-nomor
			nomor := nomor + 1;
		end;
end.
