Program LongestQueue;

var
	queue			: file of Char;
	i, j , maxLength, nQueue, queueLength, maxQueue : Integer;
	N, M, status : char;
	

begin
	maxQueue := 0; {Inisialisasi}
	assign( queue, 'Queue.txt'); {Memulai pembacaan file}
	reset( queue );
	writeln( 'file loaded!');
	read( queue , n, m); {Membaca nilai N dan M}
	nQueue := Ord( n ) - 48; {Mengkonversi nilai N dan M dari char ke Integer}
	maxLength := Ord( m ) - 48;
	for i := 1 to nQueue do {Pengulangan untuk tiap antrian yang ada}
	begin
		queueLength := 0; {Inisialisasi panjang antrian}
		for j := 1 to maxLength do {Menghitung panjang antrian}
		begin
			repeat {Untuk mengabaikan karakter - karakter seperti spasi dan newline}
				read( queue, status );
			until( status = '0' ) or (status = '1');
			if( status = '1' ) then {JIka antrian terisi}
			begin
				queueLength := queueLength + 1; 
			end;
		end;
		if( queueLength > maxQueue ) then {Jika panjang antrian lebih panjang dari antrian - atrian sebelumnya}
		begin
			maxQueue := queueLength;
		end;
	end;
	writeln( 'Antrian terpanjang adalah ', maxQueue);
	close( queue ) {Menutup pembacaan file}
end.
