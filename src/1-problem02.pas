// Nama/NIM  : Muhammad Alif Arifin/13516078
// Tema      : Percabangan -  Bab 1 Problem 2
// Deskripsi : Mengurutkan 3 mahasiswa berdasarkan nilai
// Batasan   : Nilai ketiga orang dijamin berbeda

program bab1;

{ KAMUS }
type
	mahasiswa = record
		nama : string;
		nilai : integer;
	end;

var
	m1, m2, m3 : mahasiswa; // untuk menyimpan 3 data mahasiswa

{ ALGORITMA }
begin
	write('Masukan Nama 1: ');
	readln(m1.nama);
	write('Masukan Nilai 1: ');
	readln(m1.nilai);
	write('Masukan Nama 2: ');
	readln(m2.nama);  
	write('Masukan Nilai 2: ');
	readln(m2.nilai);
	write('Masukan Nama 3: ');
	readln(m3.nama);  
	write('Masukan Nilai 3: ');
	readln(m3.nilai);
	
	// jika m1 merupakan peringkat pertama
	if ((m1.nilai > m2.nilai) and (m1.nilai > m3.nilai)) then
	begin
		writeln('Peringkat pertama adalah ', m1.nama);
		// jika m2 merupakan peringkat kedua
		if (m2.nilai > m3.nilai) then
		begin
			writeln('Peringkat kedua adalah ', m2.nama);
			writeln('Peringkat ketiga adalah ', m3.nama);          
		end
		// jika m3 merupakan peringkat kedua
		else
		begin 
			writeln('Peringkat kedua adalah ', m3.nama);              
			writeln('Peringkat ketiga adalah ', m2.nama);
		end;
	end
	// jika m2 merupakan peringkat pertama
	else if ((m2.nilai > m1.nilai) and (m2.nilai > m3.nilai)) then
	begin
		writeln('Peringkat pertama adalah ', m2.nama);
		// jika m1 merupakan peringkat kedua    
		if (m1.nilai > m3.nilai) then
		begin
			writeln('Peringkat kedua adalah ', m1.nama);
			writeln('Peringkat ketiga adalah ', m3.nama);                  
		end
		// jika m3 merupakan peringkat kedua    
		else 
		begin
			writeln('Peringkat kedua adalah ', m3.nama);    
			writeln('Peringkat ketiga adalah ', m1.nama);    
		end;
	end
	// jika m3 merupakan peringkat pertama
	else
	begin
		writeln('Peringkat pertama adalah ', m3.nama);
		// jika m2 merupakan peringkat kedua    
		if (m2.nilai > m1.nilai) then
		begin
			writeln('Peringkat kedua adalah ', m2.nama);
			writeln('Peringkat ketiga adalah ', m1.nama);          
		end
		// jika m1 merupakan peringkat kedua    
		else 
		begin
			writeln('Peringkat kedua adalah ', m1.nama);    
			writeln('Peringkat ketiga adalah ', m2.nama);    
		end;      
	end;
end.