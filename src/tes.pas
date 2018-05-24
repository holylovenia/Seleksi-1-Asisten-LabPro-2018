program tes;
uses sysutils;
var
    a,b,c:integer;
    fin: textfile;
    line: string;
begin
    assign(fin,'tes.txt');
    reset(fin);
    
    read(fin, a);
    read(fin, b);
    read(fin, c);
    writeln(a,b,c);
end.