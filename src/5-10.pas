program LandProperty;

const
    fileName = 'land.txt';

type
    intMatrix = array of array of integer;

var
    f: TextFile;
    land: intMatrix;
    N, K: integer;
    i, j, x, y: integer;

function countElmt(land: intMatrix; i, j, x, y: integer): integer;
var
    p, q: integer;

begin
    countElmt := 0;

    for p := i to x do
        for q := j to y do
            countElmt := countElmt + land[p, q];
end;

function countAvailability(land: intMatrix; N, K: integer): integer;
begin
    countAvailability := 0;

    for i := 0 to (N - 1) do
        for j := 0 to (N - 1) do
            for x := i to (N - 1) do
                for y := j to (N - 1) do
                    if (countElmt(land, i, j, x, y) mod K = 0) then
                        countAvailability := countAvailability + 1;
end;

begin
    assign(f, fileName);
    reset(f);

    read(f, N);
    setLength(land, N, N);

    for i := 0 to (N - 1) do
        for j := 0 to (N - 1) do
            read(f, land[i, j]);
    close(f);

    writeln('matriks loaded!');
    write('Pecahan uang : ');
    readln(K);

    writeln('Banyak bidang tanah yang dapat dibeli adalah ', countAvailability(land, N, K));


end.
