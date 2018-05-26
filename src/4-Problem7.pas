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
    resourceIdx : integer;
    i, j, k : integer;

begin

    // Inisialisasi nama tiap kerajaan
    kingdomListSize := 3;
    setLength(kingdomList, kingdomListSize);
    kingdomList[0].name := 'Wei';
    kingdomList[1].name := 'Wu';
    kingdomList[2].name := 'Shu';

    // Input data kekayaan masing-masing kerajaan
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
    for i := 0 to kingdomList[0].resourcesAmount-1 do begin
        for j := 0 to kingdomList[1].resourcesAmount-1 do begin
            for k := 0 to kingdomList[2].resourcesAmount-1 do begin
                if (
                    (kingdomList[0].resourcesList[i] = kingdomList[1].resourcesList[j]) and
                    (kingdomList[1].resourcesList[j] = kingdomList[2].resourcesList[k])
                ) then begin
                    resourceIdx := resourceIdx + 1;
                    similarResources[resourceIdx] := kingdomList[0].resourcesList[i];
                end;
            end;
        end;
    end;

    if (resourceIdx = 0) then writeln('Ketiga negara tersebut tidak memiliki kekayaan yang sama')
    else begin
        writeln('Ketiga negara tersebut harus membagikan :');
        for i := 1 to resourceIdx do
            writeln(similarResources[i]);
    end;

end.