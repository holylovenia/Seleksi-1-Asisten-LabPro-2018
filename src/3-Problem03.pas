Program FungsiDanProsedur;

function isComposite(n : integer):boolean;
var
	i:integer;
Begin
	isComposite:=false;
	if(n<=3) then
		isComposite := false
	else
		if (n mod 2 = 0) or (n mod 3 = 0) then
			isComposite := true;

	i:=5;
	while (i*i <= n) and (not(isComposite)) do
	Begin
		if(n mod i = 0) or (n mod (i+2)= 0) then
			isComposite := true
		else
			i:=i+6;
	end;
	
end;

procedure swap(var a,b:integer);
var //local var
	temp:integer;
begin
	temp:=a;
	a:=b;
	b:=temp;
end;

{main program}
var 
	a,b,i :integer;

begin
	write('Masukkan nilai A:');
	readln(a);
	write('Masukkan nilai B:');
	readln(b);

	if (a>b) then
		swap(a,b);

	
	for i:=a to b do
	begin
		if (isComposite(i)) then
			writeln(i)
	end;
end.
