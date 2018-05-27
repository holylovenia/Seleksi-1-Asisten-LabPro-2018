program AttendanceList;

const
    MIN_NIM = 1;
    MAX_NIM = 999;

var
    i, N : integer;
    attendance : array of integer;
    counter : array [MIN_NIM .. MAX_NIM] of integer;

begin
    write('Masukkan jumlah kertas kehadiran : ');
    readln(N);

    setlength(attendance, N - 1);

    for i := 1 to (N - 1) do
    begin
        write('Masukkan NIM mahasiswa : ');
        readln(attendance[i]);
        inc(counter[attendance[i]]);
    end;

    writeln();
    writeln('Rekap kehadiran mahasiswa : ');
    for i := MIN_NIM to MAX_NIM do
    begin
        if (counter[i] <> 0) then
            writeln(i, ' - ', counter[i], ' kali');
    end;
end.
