program problem5;

Const
    MaxIndex = 10000;
    MinIndex = 1;

type
    mat = array [MinIndex .. MaxIndex,MinIndex.. MaxIndex] of integer;

var
    s : string;
    c : char;
    fileS : Text;
    i,j,n : integer;
    tab : mat;
    number : integer;
    isMagic : boolean;
    k,l : integer;
    len,sum,sum1,sum2 : integer;

function charToInt(c:char):integer;
begin
    case c of
        '1' : charToInt := 1;
        '2' : charToInt := 2;
        '3' : charToInt := 3;
        '4' : charToInt := 4;
        '5' : charToInt := 5;
        '6' : charToInt := 6;
        '7' : charToInt := 7;
        '8' : charToInt := 8;
        '9' : charToInt := 9;
        '0' : charToInt := 0;
    end;
end;

begin
    for i:= 1 to MaxIndex do
        for j := 0 to MaxIndex do
            tab[i][j] := 0;
    isMagic := True;

    Assign(fileS,'matriks.txt');
    reset(fileS);

    readln(fileS,c);

    for i:= 1 to charToInt(c) do
    begin
        readln(fileS, s);
        number := 1;
        for j := 1 to length(s) do
        begin
            if (s[j] <> ' ') then
            begin
                tab[i][number] := tab[i][number]*10 + charToInt(s[j]);
            end 
            else
            begin
                number := number + 1;
            end;
        end;
    end; 

    close(fileS);

    writeln('matriks loaded!');
    
    len := charToInt(c);
    sum := 0;
    
    for k := 1 to len do
    begin
        sum := sum + tab[1][k];
    end;

    // cek baris dan kolom
    k := 1;
    while ( (k <= len) and (isMagic) ) do
    begin
        l := 1; 
        sum1 := 0;
        sum2 := 0;
        while ( (l <= len) and (isMagic) ) do
        begin
            sum1 := sum1 + tab[k][l];
            sum2 := sum2 + tab[l][k];
            l := l + 1;
        end;
        if ( (sum1 <> sum) or (sum2 <> sum) ) then
            isMagic := false;
        k := k + 1;
    end;

    sum1 := 0;
    sum2 := 0;
    k := 1;
    l := len;
    while ( ( k <= len) and isMagic ) do
    begin
        sum1 := sum1 + tab[k][k];
        sum2 := sum2 + tab[l][k];
        k := k + 1;
        l := l - 1;
        if( k > len) then
        begin
            if ( (sum1 <> sum) or (sum2 <> sum) ) then
                isMagic := false;
        end;
    end;

    if(isMagic) then
        writeln('YES')
    else
        writeln('NO');
end.    