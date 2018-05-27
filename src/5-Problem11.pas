// Nama : Rizki Alif Salman Alfarisy
// NIM : 13516005
// Bab : 5 - Matriks dan File eksternal
// Problem : 11

program AntrianKrastiKrab;

var
    file_antrian : text;
    antrian : array of array of integer;
    i,j,m,n: integer;
    found : boolean;

begin
    assign(file_antrian,'Queue.txt');
    reset(file_antrian);
    
    read(file_antrian,n);
    read(file_antrian,m);
    setlength(antrian,n,m);
    
    for i:=0 to n-1 do
    begin
        for j:=0 to m-1 do
        begin
            read(file_antrian,antrian[i][j]);
        end;
    end;

    close(file_antrian);
    writeln('file loaded!');
   

    j:=0;
    found := false;
    while ((j < m) and (not found)) do
    begin
        i:=0;
        while ((i < n) and (not found)) do
        begin
            if (antrian[i][j] = 1) then 
                found := true
            else 
                i:=i+1;
        end;  
        j:=j+1;
    end;    

    writeln('Antrian terpanjang adalah ', m-j+1);
end.
    