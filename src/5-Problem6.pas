uses sysutils;

// Deklarasi tipe data matrix
type
    matrix = array of array of integer;

// Prosedur untuk membaca data file
// dan mengembalikan matriks
procedure parseFile(var data : TextFile; var n : integer; var output : matrix);
var
    s : string;     // String temporary, untuk membaca tiap line pada file
    i, j : integer; // Variabel iterasi
begin
    readln(data, s);
    n := StrToInt(s);

    setLength(output, n, n);
    i := 0;
    while not eof(data) do begin
        readln(data, s);
        j := 1;
        while(j < (2*n)) do begin
            output[i, j div 2] := StrToInt(s[j]);
            j := j+2;
        end;
        i := i+1;
    end;

    writeln('matriks loaded!');
end;

// Fungsi yang mengembalikan matriks identitas
// berukuran n x n
function identity(n : integer) : matrix;
var
    res : matrix;   // Matriks hasil
    i, j : integer; // Variabel iterasi
begin
    setLength(res, n, n);
    for i := 0 to n-1 do
        for j := 0 to n-1 do
            if (i = j) then res[i,j] := 1
            else res[i,j] := 0;
    identity := res;
end;

// Fungsi untuk mengembalikan matrix transpose
// dari sebuah matrix masukan
function transpose(data : matrix; n : integer) : matrix;
var
    output : matrix;    // Matriks hasil
    i, j : integer;     // Variabel iterasi
begin
    setLength(output, n, n);
    for i := 0 to n-1 do begin
        for j := 0 to n-1 do begin
            output[i,j] := data[j,i];
        end;
    end;

    transpose := output;
end;

// Fungsi yang mengembalikan dot product
// dari dua buah matriks
function dotProduct(matA, matB : matrix; n : integer) : matrix;
var
    res : matrix;       // Matriks hasil
    sum : integer;      // Jumlah per elemen
    i, j, k : integer;  // Variabel iterasi
begin
    setLength(res, n, n);
    sum := 0;
    for i := 0 to n-1 do begin
        for j := 0 to n-1 do begin
            for k := 0 to n-1 do
                sum := sum + matA[i,k] * matB[k,j];
            res[i,j] := sum;
            sum := 0;
        end;
    end;

    dotProduct := res;
end;

// Fungsi untuk mengecek apakah suatu matrix orthogonal
// Fungsi mengembalikan boolean
function isOrthogonal(data : matrix; n : integer) : boolean;
var
    transposeMatrix : matrix;   // Matriks transpose
    productMatrix : matrix;     // Matriks hasil dot product
    identityMatrix : matrix;    // Matriks identitas
    res : boolean;              // Hasil (orthogonal / tidak)
    i, j : integer;             // Variabel iterasi
begin
    setLength(transposeMatrix, n, n);
    transposeMatrix := transpose(data, n);
    productMatrix := dotProduct(transposeMatrix, data, n);
    identityMatrix := identity(n);
    
    // Jika matriks dot product antara matriks asal
    // dengan matriks transpose-nya sama dengan
    // matriks identitas, maka matriks asal adalah
    // matriks orthogonal
    res := true;
    for i := 0 to n-1 do
        for j := 0 to n-1 do
            if (productMatrix[i,j] <> identityMatrix[i,j])
                then res := false;

    isOrthogonal := res;

end;

// Program utama
// Kamus
var
    data : TextFile;
    n : integer;
    matrixInput : matrix;
    res : boolean;

// Algoritma
begin
    assign(data, 'matriks.txt');
    reset(data);
    parseFile(data, n, matrixInput);
    close(data);

    res := isOrthogonal(matrixInput, n);
    if res then writeln('Yes')
    else writeln('No');
end.