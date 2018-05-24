program bab5_problem7;
uses sysutils;
var
    fspongian, fpatrician: TextFile;
    nSpon, nPat, i, j, k, l, count, bobot: integer;
    arrSpon, arrPat: array [1..1000, 1..1000] of integer;

begin
    // read file spongian.txt
    assign(fspongian, 'spongian.txt');
    reset(fspongian);
    read(fspongian, nSpon);
    for i := 1 to nSpon do
    begin
        for j := 1 to nSpon do
        begin
            read(fspongian, arrSpon[i,j]);
        end;
    end;
    close(fspongian);

    // read patrician.txt
    assign(fpatrician, 'patrician.txt');
    reset(fpatrician);
    read(fpatrician, nPat);
    for i := 1 to nPat do
    begin
        for j := 1 to nPat do
        begin
            read(fpatrician, arrPat[i,j]);
        end;
    end;

    writeln('matriks loaded!');

    write('Masukkan target bobot: ');
    readln(bobot);

    count := 0;
    for i := 1 to nSpon do
    begin
        for j := 1 to nSpon do
        begin
            for k := 1 to nPat do
            begin
                for l := 1 to nPat do
                begin
                    if (arrSpon[i,j] + arrPat[k,l]) = bobot then
                        count := count + 1;
                end;
            end;
        end;
    end;
    writeln('Banyak pasangan adalah ', count);

end.