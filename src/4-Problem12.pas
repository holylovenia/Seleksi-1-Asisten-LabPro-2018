// Nama : Rizki Alif Salman Alfarisy
// NIM : 13516005
// Bab : 4 - Array
// Problem : 2

program DuplikatKunci;

var
   n,i,j : integer; 
   kunci : array of integer;
   unique : boolean;

begin
    write('Masukkan jumlah kunci yang ada:');
    readln(n);
    setlength(kunci,n);

    writeln('Masukkan nomor ruangan kunci yang ada:');
    for i:=0 to n-1 do
    begin
        readln(kunci[i]);
    end;

    writeln('Kunci yang harus diduplikat:');
    for i:=0 to n-1 do
    begin
        unique:= true;
        j:=0;

        while ((j < n) and (unique)) do
        begin
            if ((kunci[i] = kunci[j]) and (j<>i)) then 
                unique := false;

            j:=j+1;
        end;

        if (unique) then 
            writeln(kunci[i]);
    end;
end.
    