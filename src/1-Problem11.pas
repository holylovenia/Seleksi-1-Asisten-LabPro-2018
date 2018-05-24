program bab1_problem11;
var
    arr: array [0..2, 0..2] of char;
    temp: char;
    i, j: integer;
begin
    // membaca input
    for i := 0 to 2 do
    begin
        for j := 0 to 2 do
        begin
            read(arr[i,j], temp);
        end;
        readln;
    end;

    if (arr[0,0] = arr[0,1]) and (arr[0,1] = arr[0,2]) then
    begin
        writeln('Pemain ', arr[0,0], ' menang');
    end
    else if (arr[1,0] = arr[1,1]) and (arr[1,1] = arr[1,2]) then
    begin
        writeln('Pemain ', arr[1,0], ' menang');
    end
    else if (arr[2,0] = arr[2,1]) and (arr[2,1] = arr[2,2]) then
    begin
        writeln('Pemain ', arr[2,0], ' menang');
    end
    else if (arr[0,0] = arr[1,0]) and (arr[1,0] = arr[2,0]) then
    begin
        writeln('Pemain ', arr[0,0], ' menang');
    end
    else if (arr[0,1] = arr[1,1]) and (arr[1,1] = arr[2,1]) then
    begin
        writeln('Pemain ', arr[0,1], ' menang');
    end
    else if (arr[0,2] = arr[1,2]) and (arr[1,2] = arr[2,2]) then
    begin
        writeln('Pemain ', arr[0,2], ' menang');
    end
    else if (arr[0,0] = arr[1,1]) and (arr[1,1] = arr[2,2]) then
    begin
        writeln('Pemain ', arr[0,0], ' menang');
    end
    else if (arr[2,0] = arr[1,1]) and (arr[1,1] = arr[0,2]) then
    begin
        writeln('Pemain ', arr[2,0], ' menang');
    end
    else
    begin
        writeln('Tidak ada yang menang');
    end;
end.