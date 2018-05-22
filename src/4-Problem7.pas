// Tipe data bentukan Kingdom
type Kingdom = record
    name : string;                      // Nama kerajaan
    resourcesAmount : integer;          // Jumlah kekayaan
    resourcesList : array of string;    // List kekayaan
end;

var
    kingdomList : array of Kingdom;
    kingdomListSize : integer;
    similarResources : array[1..1000] of string;
    //allResources : set of string;
    resourceIdx : integer;
    i, j : integer;

begin

    // Inisialisasi nama tiap kerajaan
    kingdomListSize := 3;
    setLength(kingdomList, kingdomListSize);
    kingdomList[0].name := 'Wei';
    kingdomList[1].name := 'Wu';
    kingdomList[2].name := 'Shu';

    for i := 0 to kingdomListSize-1 do begin
        write('Masukkan jumlah kekayaan negara ', kingdomList[i].name, ' : ');
        readln(kingdomList[i].resourcesAmount);
        setLength(kingdomList[i].resourcesList, kingdomList[i].resourcesAmount);

        writeln('Masukkan kekayaan negara ', kingdomList[i].name, ' :');
        for j := 0 to kingdomList[i].resourcesAmount-1 do begin
            readln(kingdomList[i].resourcesList[j]);
        end;
    end;

    resourceIdx := 0;
    for i := 0 to kingdomListSize-1 do begin

    end;

end.