program bab5problem8;


uses Sysutils;

{ deklarasi tipe Tile }
type
	Tile = record       { Struktur data Tile sebagai kotak dalam board catur }
	bishop : integer;   { Menyimpan keberadaan benteng pada kotak catur. 1 jika ada, 0 jika tidak }
	checked : boolean;  { Menyimpan apakah tile ini sudah dihitung saling serang jika ada benteng di tile ini }
end;

type 
	ChessBoard = record             { Struktur data ChessBoard sebagai papan catur beserta benteng yang ada }
	board : array of array of Tile; { Menyimpan keadaan chessboard }
	nBishop : integer;              { Menyimpan jumlah benteng dalam chessboard}
end;

{ deklarasi variabel gloal }
var
chess: ChessBoard;  { Kotak catur }
len : integer;		{ Ukuran kotak catur }
i, j, k: integer;   { Variabel iterator }
count : integer;    { Penghitung jumlah banteng yang saling serang }

{ Deklarasi fungsi file parser }
function ParseChessBoard(): ChessBoard;
{ Parsing dari file chess.txt ke dalam matrix of Tile }

	{ deklarasi variabel lokal }
	var
		chessFile : TextFile;
		n : integer;
		s : string;
		i, j: integer;
		nb : integer; { menghitung jumlah benteng }
		board : array of array of Tile; { board }
	{ algoritma parser }
	begin
		{ assign file chess.txt sebagai variabel chessFile }
		assign(chessFile, 'chess.txt');
		{ membuka file dari awal }
		reset(chessFile);
		{ membaca nilai n, yaitu ukuran dari chessboard }
		readln(chessFile, s);
		n := StrToInt(s);
		{ mengalokasikan matrix board }
		setlength(board,n,n);
		nb := 0;
		i := 0;
		while not eof(chessFile) do
		begin
			{ parsing board yang ada pada file }
			readln(chessFile, s);
			j := 0;
			while (j < n) do
			begin
				{ mengisi tile pada board sesuai dengan keadaan benteng (bishop) dan status checked diisi FALSE }
				if (s[2*j+1] = '1') then
				{ Jika terdapat bentang, tambahkan pada counter nb sebagai counter jumlah benteng pada board }
				begin
					board[i, j].bishop := 1;
					board[i, j].checked := False;
					nb := nb + 1;
				end
				else if (s[2*j + 1] = '0') then
				begin
					board[i, j].bishop := 0;
					board[i, j].checked := False;
				end;
			j := j + 1;
			end;
		i := i + 1;
		end;		 
		{ menutup file }
		Close(chessFile);
		ParseChessBoard.board := board;
		ParseChessBoard.nBishop := nb;
	end;

begin
	{ Parsing chessboard dari file chess.txt }
	chess := ParseChessBoard();
	writeln('matriks loaded!');
	{ Inisiasi panjang board dan counter jumlah benteng saling serang }
	len := length(chess.board);
	count := 0;
	{ Memproses chessboard }
	for i := 0 to len-1 do
	begin
		for j := 0 to len-1 do
		begin
			{ cek untuk chess[i,j] apakah ada benteng }
			if (chess.board[i, j].bishop = 1) then
			begin
				{ cek secara horizontal mulai dari tile di sebelah kanannya jika ada benteng lain }
				k := j+1;
				while (k < len) do
				begin
					{ 
					    Jika terdapat benteng pada salah satu tile di sebelah kanannya, 
					    cek kedua benteng apabila sudah pernah dicatat sebagai benteng yang saling serang
					}
					if (chess.board[i,k].bishop = 1) then
					begin
						{ Jika belum dicek, hitung benteng tersebut lalu catat sebagai saling serang }
						if not(chess.board[i,j].checked) then 
						begin
							count := count + 1;
							chess.board[i,j].checked := True;
						end;
						{ Jika belum dicek, hitung benteng lain tersebut lalu catat sebagai saling serang }
						if not(chess.board[i,k].checked) then
						begin
							count := count + 1;
							chess.board[i,k].checked := True;
						end;
						{ langsung keluar dari loop dan memeriksa tile lain  }
						k := len;
					end
					{ Jika tidak ada benteng, cek tile sebelahnya sampai akhir dari kolom board }
					else k := k + 1;
				end;

				{ cek secara vertical mulai dari tile di bawahnya jika ada benteng lain }
				k := i+1;
				while (k < len) do
				begin
					{ 
					    Jika terdapat benteng pada salah satu tile di bawahnya, 
					    cek kedua benteng apabila sudah pernah dicatat sebagai benteng yang saling serang
					}
					if (chess.board[k,j].bishop = 1) then
					begin
						{ Jika belum dicek, hitung benteng tersebut lalu catat sebagai saling serang }
						if not(chess.board[i,j].checked) then 
						begin
							count := count + 1;
							chess.board[i,j].checked := True;
						end;
						{ Jika belum dicek, hitung benteng lain tersebut lalu catat sebagai saling serang }
						if not(chess.board[k,j].checked) then
						begin
							count := count + 1;
							chess.board[k,j].checked := True;
						end;
						{ langsung keluar dari loop dan memeriksa tile lain  }
						k := len;
					end
					{ Jika tidak ada benteng, cek tile di bawahnya sampai akhir dari baris board }
					else k := k + 1;
				end;
			end;
		end;
	end;
	{ Jumlah benteng yang tidak saling serang adalah jumlah benteng dikurangi jumlah benteng yang saling serang }
	writeln('Banyaknya benteng yang tidak saling serang adalah ',chess.nBishop - count);
end.
