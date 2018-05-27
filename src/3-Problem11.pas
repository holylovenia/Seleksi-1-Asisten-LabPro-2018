program BilanganMenanjak;
//Program untuk menentukan apakah x bilangan menanjak

(* DICTIONARY *)
var
	N : Int64; 

(* FUNCTIONS *)
function IsMenanjak (X:Int64) : boolean;
//Fungsi penentu apakah X bilangan menanjak
begin
	if (X >= 10) AND (X mod 10 < ((X div 10) mod 10))
	then IsMenanjak (X div 10)
	else if X < 10 
	then IsMenanjak := true
	else IsMenanjak := false; 
end;

(* MAIN PROGRAM *)
Begin
	//INPUT
	write('Masukkan N : ');
	readln(N);
	write('Bilangan ');
	write(N);
	//PROSES + OUTPUT
	if IsMenanjak(N) 
	then write(' adalah bilangan menanjak') 
	else write(' bukan bilangan menanjak');
End.