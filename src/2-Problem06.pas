program problem206;

{Kamus}
var
    init, interest, time, i, bank : integer;

{Algoritma utama}
begin
    {Menerima masukan uang tabungan yang rutin disetorkan}
    write('Masukan uang tabungan :');
    readln(init);

    {Menerima masukan persen bunga}
    write('Masukan persen bunga :');
    readln(interest);

    {Menerima masukan berapa lama akan menabung}
    write('Masukan lama menabung :');
    readln(time);

    {Menghitung dan mengeluarkan output di layar}
    bank := 0;
    for i:= 1 to time do
    begin
        write('Tabungan pada bulen ke-');
        write(i);
        write(' = ');
        bank := bank + init;
        bank := bank + (bank*interest) div 100;
        writeln(bank);
    end;
end.