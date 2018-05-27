program FxGx;

var
    x: integer;

function f(x: integer): integer;
begin
    f := 2*x*x - 7*x - 19;
end;

function g(x: integer): integer;
begin
    g := 3*x + 20;
end;

begin
    write('Masukan nilai x: ');
    readln(x);
    writeln('f(g(f(x))) = ', f(g(f(x))):2);
end.
