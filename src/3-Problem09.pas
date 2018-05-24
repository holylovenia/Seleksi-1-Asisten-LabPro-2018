program bab3_problem9;
var
    a,b,i:longint;
    found: boolean;

function isPalindrom(num:longint): boolean;
var
    temp, reverse: longint;
begin
    temp := num;
    reverse := 0;
    while(temp <> 0) do
    begin
        reverse := reverse + (temp mod 10);
        temp := temp div 10;
        if (temp <> 0) then
            reverse := reverse*10;
    end;
    
    isPalindrom := num = reverse;
end;

begin
    write('Masukkan nilai range bilangan A dan B : ');
    readln(a, b);

    found := false;
    for i := a to b do
    begin
        if isPalindrom(i) then
        begin
            writeln(i);
            found := true;
        end;
    end;

    if not found then
        writeln('TIDAK ADA');
end.