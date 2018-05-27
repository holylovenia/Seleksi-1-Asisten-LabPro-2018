program Rank;

type
    name = string;
    score = integer;

var
    stName, ndName, rdName, tempName: name;
    stScore, ndScore, tempScore: score;

begin
    write('Masukan Nama 1 : ');
    readln(stName);
    write('Masukan Nilai 1 : ');
    readln(stScore);

    write('Masukan Nama 2 : ');
    readln(tempName);
    write('Masukan Nilai 2 : ');
    readln(tempScore);

    if (stScore > tempScore) then
    begin
        ndName := tempName;
        ndScore := tempScore;
    end
    else
    begin
        ndName := stName;
        ndScore := stScore;
        stName := tempName;
        stScore := tempScore;
    end;

    write('Masukan Nama 3 : ');
    readln(tempName);
    write('Masukan Nilai 3 : ');
    readln(tempScore);

    if (tempScore > stScore) then
    begin
        rdName := ndName;
        ndName := stName;
        stName := tempName;
    end
    else if (tempScore < ndScore) then
        rdName := tempName
    else
    begin
        rdName := ndName;
        ndName := tempName;
    end;

    writeln('Peringkat pertama adalah ', stName);
    writeln('Peringkat kedua adalah ', ndName);
    writeln('Peringkat ketiga adalah ', rdName);
end.
