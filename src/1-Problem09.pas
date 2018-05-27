program Problem9;

var
    SS1,SS2 : char; (* satuan suhu termometer*)
    suhu : real;
    result : real;
    valid : boolean;
begin
    valid := True;
    write('Masukan satuan suhu pada termometer: '); readln(SS1);
    write('Masukan besar suhu : '); readln(suhu);
    write('Masukan satuan yang ingin diketahui: '); readln(SS2);
    Case SS1 of
        'C' :
          begin
            if ( SS2 = 'R' ) then
              begin
                result := 4 / 5 * suhu;
              end
            else if ( SS2 = 'F' ) then
              begin
                result := ( 9 / 5 * suhu ) + 32;
              end
            else
              begin
                writeln('Masukan tidak valid'); 
                valid := False;
              end;
          end;
        'R' : 
          begin
            if ( SS2 = 'C' ) then
              begin
                result := 5 / 4 * suhu;
              end
            else if ( SS2 = 'F' ) then
              begin
                result := ( 9 / 4 * suhu ) + 32;
              end
            else
              begin
                writeln('Masukan tidak valid'); 
                valid := False;
              end;
          end;
        'F' :
          begin
            suhu := suhu - 32;
            if ( SS2 = 'C' ) then
              begin
                result := 5 / 9  * suhu;
              end
            else if ( SS2 = 'R' ) then
              begin
                result := 4 / 9 * suhu;
              end
            else
              begin
                writeln('Masukan tidak valid'); 
                valid := False;
              end;
          end;
    else
        writeln('Masukan tidak valid');
        valid := False;
    end;
    if ( valid ) then
        writeln('Besar suhu dalam ',SS2,' : ', result:0:2);
end.