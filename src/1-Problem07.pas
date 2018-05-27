program problem107;
{
Mengeluarkan output dari permainan batu gunting kertas
dimana output selalu menang. Tetapi output hanyalah
batu atau kertas, jikat tidak bisa menang harus seri.
}

{Kamus}
var
    input : string;

{Algoritma Utama}
begin
    write('Tuan Vin mengeluarkan: ');
    readln(input);
    write('Anda mengeluarkan: ');
    if(input = 'batu') then
    begin
        writeln('kertas');
    end
    else if (input = 'gunting') then
    begin
        writeln('batu');
    end
    else
    begin
        writeln('kertas')
    end;
end.