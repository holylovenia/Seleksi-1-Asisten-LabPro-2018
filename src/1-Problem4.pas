program Bab1Problem4;

procedure ReadPosition(var x:integer; var y:integer);
{Prosedur untuk membaca input posisi X dan Y pada bidang kartesian}
begin
	write('Masukkan nilai X : ');
	readln(x);
	write('Masukkan nilai Y : ');
	readln(y);
end;

procedure PrintPosition(x:integer; y:integer);
{Prosedur untuk mencetak kuadran dari posisi (x,y) pada bidang kartesian}
begin
	if (x = 0) and (y = 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di titik origin');
	end else
	if (x = 0) and (y <> 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di sumbu Y');
	end else
	if (x <> 0) and (y = 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di sumbu X');
	end else
	if (x > 0) and (y > 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di kuadran 1');
	end else
	if (x < 0) and (y > 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di kuadran 2');
	end else
	if (x < 0) and (y < 0) then
	begin
		writeln('Titik (', x, ',', y, ') berada di kuadran 3');
	end else
		writeln('Titik (', x, ',', y, ') berada di kuadran 4');
end;
var
	xPosition : integer;
	yPosition : integer;
	
begin
	ReadPosition(xPosition,yPosition);
	PrintPosition(xPosition,yPosition);
end.