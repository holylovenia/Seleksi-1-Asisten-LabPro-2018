program bab3problem10;

var
n : longint;

{ definisi fungsi Factorial }
function Factorial(n : longint) : longint;
{ Mengembalikan nilai n! dalam bentuk long integer untuk memenuhi angka-angka besar }
{ Prekondisi: n >= 0 }
	
	{ algoritma fungsi }
	begin
		{ BASIS: 1! = 0! = 1 }
		if (n <= 1) then 
		begin
			Factorial := 1; 
		end
		{ REKURENS : n! = n * (n-1)! }
		else
			Factorial := n * Factorial(n-1);
	end;

{ algoritma program utama }
begin
	write('Masukan N: ');
	readln(n);
	if ( n >= 0 ) then
	begin
		writeln('N! = ',Factorial(n));
	end
	else
	begin
		writeln('Invalid. Tolong masukkan N lebih besar atau sama dengan 0.');
	end;
end.