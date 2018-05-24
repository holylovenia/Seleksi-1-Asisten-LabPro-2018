program bab4_problem8;
function evaluate(a,b,c:integer): boolean;
begin
    evaluate := a + b*b = c;
end;

var
    arr: array[1..100000] of integer;
    res: array[1..100000, 1..3] of integer;
    a,b,c,n,i,j,k,idxRes:integer;
    found: boolean;

begin
    write('Masukkan jumlah elemen array : ');
    readln(n);
    write('Masukkan isi array : ');
    for i := 1 to n do
    begin
        read(arr[i]);
    end;

    found := false;
    idxRes := 1;
    for i := 1 to n-2 do
    begin
        for j := i+1 to n-1 do
        begin
            for k := j+1 to n do
            begin
                a := arr[i];
                b := arr[j];
                c := arr[k];
                if evaluate(a,b,c) then
                begin
                    res[idxRes,1] := a;
                    res[idxRes,2] := b;
                    res[idxRes,3] := c;
                    idxRes := idxRes + 1;
                    found := true;
                end
                else if evaluate(a,c,b) then
                begin
                    res[idxRes,1] := a;
                    res[idxRes,2] := c;
                    res[idxRes,3] := b;
                    idxRes := idxRes + 1;
                    found := true;
                end
                else if evaluate(c,a,b) then
                begin
                    res[idxRes,1] := c;
                    res[idxRes,2] := a;
                    res[idxRes,3] := b;
                    idxRes := idxRes + 1;
                    found := true;
                end
                else if evaluate(c,b,a) then
                begin
                    res[idxRes,1] := c;
                    res[idxRes,2] := b;
                    res[idxRes,3] := a;
                    idxRes := idxRes + 1;
                    found := true;
                end
                else if evaluate(b,a,c) then
                begin
                    res[idxRes,1] := b;
                    res[idxRes,2] := a;
                    res[idxRes,3] := c;
                    idxRes := idxRes + 1;
                    found := true;
                end
                else if evaluate(b,c,a) then
                begin
                    res[idxRes,1] := b;
                    res[idxRes,2] := c;
                    res[idxRes,3] := a;
                    idxRes := idxRes + 1;
                    found := true;
                end;
            end;
        end;
    end;
    if not found then
        writeln('tidak ada nilai a b c yang memenuhi')
    else begin
        writeln('nilai a b c yang memenuhi adalah :');
        for i := 1 to idxRes-1 do
        begin
            writeln('[', res[i, 1], ',', res[i, 2], ',', res[i, 3], ']');
        end;
    end;
end.