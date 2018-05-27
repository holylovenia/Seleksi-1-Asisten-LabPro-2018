Program Trigonometri;

var
    a,x : Integer;

begin
    write('Masukkan nilai sudut: '); {Membaca Input}
    readln(a);
    if( 0 <= a ) and ( a <= 90 ) then {A di kuadran 1}
    begin
        x := a;
        writeln( 'sin(', a ,')',' = sin(', x ,')' );
    end else if ( 90 < a ) and ( a <= 180 ) then {A di kuadran 2}
    begin
        x := 180-a;
        writeln( 'sin(', a ,')',' = sin(', x ,')' );
    end else if( 180 < a ) and ( a <= 270 ) then {A di kuadran 3}
    begin
        x := a-180;
        writeln( 'sin(', a ,')',' = -sin(', x ,')' );
    end else if( 270 < a ) and ( a <= 360 ) then {A di kuadran 4}
    begin
        x := 360-a;
        writeln( 'sin(', a ,')',' = -sin(', x ,')' );
    end;
end.