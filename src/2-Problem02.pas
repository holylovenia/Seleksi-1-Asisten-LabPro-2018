// Nama : Rizki Alif Salman Alfarisy
// NIM : 13516005
// Bab : 2 - Pengulangan
// Problem : 2

program Bilangan;

var
   i,j,x,y,sum : integer; 
   tipe : char;
   exist : boolean; 

begin
    write('Masukan X:');
    readln(x);
    
    write('Masukan Y:');
    readln(y);

    write('Masukan tipe bilangan:');
    readln(tipe);

    writeln('Tipe bilangan ', tipe,' pada rentang ', x, ' sampai ', y, ' adalah');
    
    exist := false;

    case tipe of
        'A' :
            begin
                //Iterasi mencari bilangan tipe A di rentang x - y
                for i:=x to y do
                begin
                    sum := 0;
                    for j:= 1 to i-1 do
                    begin
                        if (i mod j = 0) then
                            sum := sum + j;
                    end;
                    if (sum < i)then
                    begin
                        writeln(i);
                        exist := true;
                    end;
                end;
            end;     
        'B' :
            begin
                //Iterasi mencari bilangan tipe B di rentang x - y
                for i:=x to y do
                begin
                    sum := 0;
                    for j:= 1 to i-1 do
                    begin
                        if (i mod j = 0) then
                            sum := sum + j;
                    end;
                    if (sum = i)then
                    begin
                        writeln(i);
                        exist := true;
                    end;
                end;
            end;
        'C' :
            begin
                //Iterasi mencari bilangan tipe C di rentang x - y
                for i:=x to y do
                begin
                    sum := 0;
                    for j:= 1 to i-1 do
                    begin
                        if (i mod j = 0) then
                            sum := sum + j;
                    end;
                    if (sum > i)then
                    begin
                        writeln(i);
                        exist := true;
                    end;
                end;
            end;
        end;

    if (exist = false) then 
        writeln('Tidak ada');
end.
    