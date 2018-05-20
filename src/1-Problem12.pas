program bab1problem12;

var
a, b, c, d : integer;

begin
	write('Masukkan nilai A: '); readln(a);
	write('Masukkan nilai B: '); readln(b);
	write('Masukkan nilai C: '); readln(c);
	write('Masukkan nilai D: '); readln(d);

	{ Mencoba seluruh kemungkinan jawaban sehingga a op1 b = c op2 d terpenuhi }

	if (a + b = c + d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' + ',b,' = ',c,' + ',d);
	end
	else if (a + b = c - d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' + ',b,' = ',c,' - ',d);
	end
	else if (a + b = c * d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' + ',b,' = ',c,' * ',d);			
	end
	else if (d <> 0) and (a + b = c / d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' + ',b,' = ',c,' / ',d);
	end
	else if (a - b = c + d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' - ',b,' = ',c,' + ',d);
	end
	else if (a - b = c - d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' - ',b,' = ',c,' - ',d);
	end
	else if (a - b = c * d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' - ',b,' = ',c,' * ',d);
	end
	else if (d <> 0) and (a - b = c / d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' - ',b,' = ',c,' / ',d);
	end
	else if (a * b = c + d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' * ',b,' = ',c,' + ',d);
	end
	else if (a * b = c - d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' * ',b,' = ',c,' - ',d);
	end
	else if (a * b = c * d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' * ',b,' = ',c,' * ',d);
	end
	else if (d <> 0) and (a * b = c / d) then
	begin
		writeln('Persamaan yang mungkin adalah: ',a,' * ',b,' = ',c,' / ',d);
	end
	else if (b <> 0) then
	begin
		if (a / b = c + d) then
		begin
			writeln('Persamaan yang mungkin adalah: ',a,' / ',b,' = ',c,' + ',d);
		end
		else if (a / b = c - d) then
		begin
			writeln('Persamaan yang mungkin adalah: ',a,' / ',b,' = ',c,' - ',d);
		end
		else if (a / b = c * d) then
		begin
			writeln('Persamaan yang mungkin adalah: ',a,' / ',b,' = ',c,' * ',d);
		end
		else if (d <> 0) and (a / b = c / d) then
		begin
			writeln('Persamaan yang mungkin adalah: ',a,' / ',b,' = ',c,' / ',d);
		end
		else
			writeln('Tidak ada persamaan a op1 b = c op2 d yang memenuhi');
	end
	{ Jika tidak ada kemungkinan yang dapat dilakukan, maka diberikan pesan kesalahan }
	else
	begin
		writeln('Tidak ada persamaan a op1 b = c op2 d yang memenuhi');
	end;
end.