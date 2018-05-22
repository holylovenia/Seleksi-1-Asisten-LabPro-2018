// Kamus
var
    emoticon: String;   // Emoticon masukan

// Algoritma
begin
    // Masukan program
    write('Masukan emoticon: ');
    readln(emoticon);

    // Menyocokkan emoticon dengan ekspresi yang benar
    write('Tuan Vin sedang ');
    case (emoticon) of
        ':)' : writeln('senyum');
        ':(' : writeln('sedih');
        ':D' : writeln('tertawa');
        ':''(' : writeln('menangis');
        ':))' : writeln('ROTFL');
    end;
end.