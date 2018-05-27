program Bab3Problem2;
uses sysutils;

function HexToDec(Hex:string):integer;
{Fungsi untuk mengubah bilangan hexadecimal dengan panjang maksimal 2 digit menjadi integer}
var
	Dec : integer;
begin
	case Hex[2] of
		'0' .. '9' : Dec := StrToInt(Hex[2]);
		'A' : Dec := 10;
		'B' : Dec := 11;
		'C' : Dec := 12;
		'D' : Dec := 13;
		'E' : Dec := 14;
		'F' : Dec := 15;
	end;
	
	case Hex[1] of
		'0' .. '9' : Dec += StrToInt(Hex[1]) * 16;
		'A' : Dec += 10 * 16;
		'B' : Dec += 11 * 16;
		'C' : Dec += 12 * 16;
		'D' : Dec += 13 * 16;
		'E' : Dec += 14 * 16;
		'F' : Dec += 15 * 16;
	end;
	
	HexToDec := Dec;
end;

function ConvertToHex(Dec:integer):string;
begin
	case Dec of
		0 .. 9 : ConvertToHex := IntToStr(Dec);
		10 : ConvertToHex := 'A';
		11 : ConvertToHex := 'B';
		12 : ConvertToHex := 'C';
		13 : ConvertToHex := 'D';
		14 : ConvertToHex := 'E';
		15 : ConvertToHex := 'F';
	end;
end;

function DecToHex(Dec:integer):string;
{Fungsi untuk mengubah bilangan decimal }
var
	Hex : string;
	temp : integer;
begin
	Hex := '';
	while (Dec <> 0) do
	begin
		temp := Dec mod 16;
		Hex := ConvertToHex(temp) + Hex;
		Dec := Dec div 16;
	end;
	DecToHex := Hex;
end;

var
	Hex1 : string;
	Hex2 : string;
	
begin
	write('Masukan A : ');
	readln(Hex1);
	write('Masukan B : ');
	readln(Hex2);
	writeln(Hex1, ' + ', Hex2, ' = ', DecToHex(HexToDec(UpperCase(Hex1)) + HexToDec(UpperCase(Hex2))));
end.
