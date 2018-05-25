program PizzaCutCounting;
//Program untuk menentukan maksimal jumlah potongan dari sebuah input

(* DICTIONARY *)
var
	N : integer;
	result : integer;


(* MAIN PROGRAM *)
Begin
	//INPUT
	write('Masukkan jumlah pemotongan : ');
	readln(N);
	result := 0;
	
	//PROSES
	// f(n) = n + f(n - 1), n > 0
	while N > 0 do
	begin
		result := result + N;
		N := N - 1;
	end;
	//Mencapai basis
	result := result + 1;
	
	//OUTPUT
	write('Potongan maksimal yang didapat adalah ');
	write(result);
End.