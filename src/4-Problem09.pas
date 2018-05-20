program bab4problem9;

var
n,i,x : integer;
result : array of integer; { array yang menyimpan persamaan derajat n-1 hasil turunan persamaan derajat n. range indeks 0..(n-1) }

begin
	write('Masukkan pangkat paling besar : ');
	readln(n);
	{ Mengalokasikan ukuran dari array yang akan digunakan, yaitu sebesar n }
	setlength(result, n);
	{ Mengambil hasil input persamaan dan sekaligus menghitung hasilnya }
	for i := n downto 0 do
	begin
		write('Masukkan koefisien x^',i,': ');
		readln(x);
		{ Jika pangkatnya X^0 pada persamaan, tidak perlu dimasukkan ke dalam result }
		if (i > 0) then
		begin
			result[i-1] := i*x;
		end;
	end;
	write('Maka hasil turunannya adalah ');
	{* Penulisan hasil 
	   Spek penulisan hasil:
	       1. Pada penulisan X^(n-1), jika koefisiennya tidak negatif, tanda '+' tidak perlu ditulis
	       2. Pada penulisan koefisien pangkat lain, jika koefisien negatif, harus didahului ' - '. Jika tidak, harus didahului '+' 

	   Contoh penulisan:
	       [1] 3X^2 + 10X^1 + 2X^0
	       [2] - 10X^1 + 2X^0
	       [3] 10X^1 - 2X^0
	*}
	for i := n-1 downto 0 do
	begin
		{ Penanganan kasus koefisien positif }
		if(result[i] > 0) then
			begin
				{ Penanganan kasus penulisan X^m dan X^(n-1) | m < (n-1) }
				if (i < n-1) then
				begin
					write('+ ',result[i],'X^',i);
				end
				else
					write(result[i],'X^',i);
			end
		else
		{ Penanganan kasus koefisien negatif }
			write('- ', -1*result[i],'X^',i);
		{ Penanganan spasi untuk estetika }
		if (i > 0) then
			write(' ');
	end;
end.