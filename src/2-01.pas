program ThreeSevenDivisor;

var
    i, N: integer;

begin
    write('Masukan N : ');
    readln(N);

    for i := 1 to N do
        if (((i mod 3 = 0) or (i mod 7 <> 0)) and ((i mod 3 <> 0) or (i mod 7 = 0))) then
            writeln(i);
end.
