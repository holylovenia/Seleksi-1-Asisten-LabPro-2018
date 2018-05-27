program JurusanCheck;
//Program untuk mengecek jurusan mahasiswa dari nim.

(* DICTIONARY *)
var
	Nama : string;
    Nim : string;
	Jurusan : string;
	nimHead : string;
	
(* MAIN PROGRAM *)
Begin
	//Input
	write('Masukkan Nama : ');
	readln(nama);
	write('Masukkan NIM : ');
	readln(nim);
	
	//Proses
	//Mendapatkan tiga angka pertama, nimHead di inisialisasi tiga karakter.
	nimHead := '000';
	nimHead[1] := nim[1];
	nimHead[2] := nim[2];
	nimHead[3] := nim[3];
	case nimHead of
		'135' : Jurusan := 'Teknik Informatika';
		'180' : Jurusan := 'Teknik Tenaga Listrik';
		'181' : Jurusan := 'Teknik Telekomunikasi';
		'182' : Jurusan := 'Sistem Teknologi dan Informasi';
		else Jurusan := '???';
	end;
	
	//Output
	write(Nama);
	write(' adalah mahasiswa ');
	write(Jurusan); 
	
End.