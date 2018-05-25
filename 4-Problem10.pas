program Integral;
//Program untuk mengintegral, dengan input koefisien.
uses sysutils;
//Untuk kepentingan display

(* DICTIONARY *)
var
	power : integer;
	equation : array[1..100] of real;
	i : integer;

Begin
	//INPUT + PROSES
	write('Masukkan pangkat paling besar : ');
	readln(power);
	for i := power downto 0 do
	begin
		write('Masukkan koefisien x^');
		write(i);
		write(' : ');
		//Masukkan ke arrindex ke i+1
		readln(equation[i+1]);
		//Langsung 'integralkan'
		equation[i+1] := equation[i+1]/(i+1);
	end;
	
	//OUTPUT
	write('Maka hasil integralnya adalah ');
	for i := power+1 downto 1 do
	begin
		//Note: FloatToStrf berfungsi untuk mengubah nilai real menjadi string
		//dengan format yang lebih 'appealing'.
		if (i = (power + 1)) AND (equation[i] > 0) then
		begin
			write(FloatToStrf(equation[i],FFGeneral,8,2));
			write('x^');
			write(i);
		end
		else if equation[i] < 0 then
		begin
			write(' - ');
			write(FloatToStrf(equation[i],FFGeneral,8,2));
			write('x^');
			write(i);
		end
		else //i <> power+1 and eq[i]> 0
		begin
			write(' + ');
			write(FloatToStrf(equation[i],FFGeneral,8,2));
			write('x^');
			write(i);
		end;
	end;
	
End.
