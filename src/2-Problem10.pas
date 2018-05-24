program bab2_problem10;
var
    max, max2, min, min2, n, i, val: integer;
begin
    write('Masukan jumlah bilangan :');
    readln(n);
    if n > 0 then
        write('Bilangan ke-1 :');
        readln(val);
        max := val;
        min := val;
        write('Bilangan ke-2 :');
        readln(val);
        if val > max then
        begin
            max2 := max;
            max := val;
        end
        else begin
            max2 := val;
        end;
        if val < min then
        begin
            min2 := min;
            min := val;
        end
        else begin
            min2 := val;
        end;
    for i := 3 to n do
    begin
        write('Bilangan ke-', i, ' :');
        readln(val);
        if val > max then
        begin
            max2 := max;
            max := val;
        end 
        else if val > max2 then 
        begin
            max2 := val;
        end;
        if val < min then
        begin
            min2 := min;
            min := val;
        end
        else if val < min2 then
        begin
            min2 := val;
        end;
    end;
    writeln('Bilangan terendah kedua adalah ', min2);
    writeln('Bilangan tertinggi kedua adalah ', max2);
end.