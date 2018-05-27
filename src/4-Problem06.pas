program problem6;

Const
    MaxIndex = 100;
    MinIndex = 1;
    
type
    TabString = array [MinIndex..MaxIndex] of string;
    TabBool = array [MinIndex..MaxIndex] of boolean;
var
    tab1, tab2 : TabString;
    tabValidasi : TabBool;
    N1,i,j : integer;
    N2 : integer;
    flag : boolean;

function isExist( S : string; T : TabString; N : integer) : boolean;

var
    Exist : boolean;
    k : integer;

begin
    Exist := FALSE;
    k := 1;
    while ( ( k <= N ) and ( not Exist ) ) do
    begin
        if (T[k] = S) then
        begin
            Exist := TRUE;
        end;
        k := k + 1;
    end;
    isExist := Exist;

end;

begin

    write('Masukan jumlah kekayaan negara Adolf : '); readln(N1);
    writeln('Masukan kekayaan negara Adolf :');
    for i:= 1 to N1 do
    begin
        readln(tab1[i]);
    end;

    write('Masukan jumlah kekayaan negara tetangga : '); readln(N2);
    writeln('Masukan kekayaan negara tetangga :');
    for i:= 1 to N2 do
    begin
        readln(tab2[i]);
    end;

    flag := TRUE;
    for i:= 1 to N2 do
    begin
        tabValidasi[i] := isExist(tab2[i], tab1, N1 );
        if ( not tabValidasi[i] and flag ) then
        begin
            flag := false;
            writeln('Negara adolf tidak memiliki :');
            writeln(tab2[i]);
        end
        else if( not tabValidasi[i] ) then
             begin
                writeln(tab2[i]);
             end;
    end;

    if ( flag ) then
        writeln('Negara adolf memiliki segalanya');
end.
