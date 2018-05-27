// Nama : Rizki Alif Salman Alfarisy
// NIM : 13516005
// Bab : 1 - Percabangan
// Problem : 3

program Trigonometri;

var
   sudut : integer; 

begin
    write('Masukan nilai sudut:');
    readln(sudut);

    if ((sudut >= 0) and (sudut <= 90)) then
        writeln('sin(',sudut,') = sin(',sudut,')')
    else if ((sudut > 90) and (sudut <= 180)) then
        writeln('sin(',sudut,') = sin(',180-sudut,')')
    else if ((sudut > 180) and (sudut <= 270)) then
        writeln('sin(',sudut,') = -sin(',sudut-180,')')
    else //sudut > 270 and sudut < 360
        writeln('sin(',sudut,') = -sin(',360-sudut,')');
end.
    