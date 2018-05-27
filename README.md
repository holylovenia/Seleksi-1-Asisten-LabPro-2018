# Seleksi 1 Asisten LabPro 2018
-----------------------------------

Dibuat oleh : Christian Kevin Saputra - 13516073

-----------------------------------
# Bab 1 Problem 05

-Deskripsi persoalan: 
  Menerima input nama dan nilai (0 - 100) dari pengguna. Nilai kemudian dikonversi sesuai aturan berikut:
    - 81 - 100: A
    - 61 - 80: B
    - 41 - 60: C
    - 21 - 40: D
    - 0 - 20: E
  Setelah nilai dikonversi, program menampilkan nama dan nilai yang telah dikonversi ke layar.

-Source Code:
  Program Percabangan;

  var
    nama : string;
    nilai : integer;
    grade: char;
      
  Begin
    write('Masukkan nama: ');
    readln(nama);

    write('Masukkan nilai: ');
    readln(nilai);

    if (nilai >= 81) then
      grade:='A'
    else if (nilai >= 61) and (nilai < 81) then
      grade:='B'
    else if (nilai >= 41) and (nilai < 61) then
      grade:='C'
    else if (nilai >= 21) and (nilai < 41) then
      grade:='D'
    else
      grade:='E';

    writeln(nama, ' mendapat nilai ', grade);
  end.

-Penjelasan Solusi:
  Solusi untuk persoalan ini adalah dengan menggunakan if dan else untuk semua kondisi pada penjelasan soal.

-----------------------------------
# Bab 2 Problem 04

-Deskrpsi Persoalan:
  Program dapat menerima input berupa banyaknya siswa dan nilai dari siswa - siswa tersebut kemudian menentukan banyaknya siswa yang lulus dan tidak lulus.
  Siswa dikatakan lulus apabila memiliki nilai >= 60.

-Source Code:
  Program Pengulangan;

  var
    n, i, nilai, lulus, tidaklulus:integer;

  Begin
    write('Banyak mahasiswa: ');
    readln(n);
    lulus:=0;
    tidaklulus:=0;
    for i:= 1 to n do
    Begin
      write('Nilai anak ke -',i,' :');
      readln(nilai);
      if (nilai >= 60) then
      Begin
        lulus := lulus + 1;
      end else
      Begin
        tidaklulus := tidaklulus + 1;
      end;
    end;
    writeln('Total mahasiswa yang lulus adalah ',lulus);
    writeln('Total mahasiswa yang tidak lulus adalah ',tidaklulus);
  end.

-Penjelasan Solusi:
 Solusi dari persoalan ini adalah dengan melakukan loop(pengulangan) sebanyak jumlah mahasiswa. Di dalam loop tersebut, didapatkan nilai dan ditentukan jumlah siswa yang lulus dan tidak lulus.

-----------------------------------
# Bab 3 Problem 03

-Deskripsi Persoalan:
  Program dapat mencari semua bilangan komposit yang berada diantara dua bilangan A dan B secara **inklusif**.

-Source Code:
  Program FungsiDanProsedur;

  function isComposite(n : integer):boolean;
  var
    i:integer;
  Begin
    isComposite:=false;
    if(n<=3) then
      isComposite := false
    else
      if (n mod 2 = 0) or (n mod 3 = 0) then
        isComposite := true;

    i:=5;
    while (i*i <= n) and (not(isComposite)) do
    Begin
      if(n mod i = 0) or (n mod (i+2)= 0) then
        isComposite := true
      else
        i:=i+6;
    end;
    
  end;

  procedure swap(var a,b:integer);
  var //local var
    temp:integer;
  begin
    temp:=a;
    a:=b;
    b:=temp;
  end;

  {main program}
  var 
    a,b,i :integer;

  begin
    write('Masukkan nilai A:');
    readln(a);
    write('Masukkan nilai B:');
    readln(b);

    if (a>b) then
      swap(a,b);

    
    for i:=a to b do
    begin
      if (isComposite(i)) then
        writeln(i)
    end;
  end.

-Penjelasan Solusi:
  Solusi untuk menyelesaikan solusi ini adalah dengan membuat sebuah fungsi untuk menentukan apakah suatu bilangan merupakan bilangan komposit atau bukan. Setelah terdapat fungsi tersebut, maka program akan mengeluarkan seluruh bilangan yang merupakan bilangan komposit.

-----------------------------------
# Bab 4 Problem 01

-Deskripsi Soal:
  Program dapat menerima barang sejumlah n dan mencatat seluruh barang tersebut. Program dapat menerima perintah untuk menjual barang ataupun melihat stok barang dan akan selesai apabila semua barang telah terjual.

-Source Code:
  Program Bab4_Array;

  var
    stok , temp: array of string;
    jumlah,i,j,k,pilihan :integer;
    found: boolean;
    namabarang :string;

  {Algoritma}
  Begin
    write('Masukkan jumlah barang: ');
    readln(jumlah);
    SetLength(stok, jumlah);
    for i:=0 to jumlah-1 do
    Begin
      write('Masukkan nama barang: ');
      readln(stok[i]);
    end;
    while length(stok) <> 0 do
    Begin
      writeln();
      writeln('1.Jual');
      writeln('2.Lihat stok');
      writeln();
      write('Pilihan menu: ');
      readln(pilihan);
      while (pilihan < 1) or (pilihan > 2) do
      Begin
        writeln('Pilihan menu salah. Silahkan ulangi');
        write('Pilihan menu: ');
        readln(pilihan);
      end;
      j:=0;
      if (pilihan = 1) then
      Begin
        found:=false;
        write('Masukkan nama barang:');
        readln(namabarang);
        while (j <= length(stok) - 1) and (not(found)) do
        Begin
          if (stok[j] = namabarang) then
          Begin
            stok[j] := 'null';
            found:=true;
            //mengurangi elemen di dalam array
            SetLength(temp, length(stok)-1);
            k:=0;
            for i:=0 to length(stok) - 1 do
            Begin
              if (i <> j) then
              Begin
                temp[k] := stok[i];
                k:= k + 1;
              end;
            end;    
            stok:=Copy(temp,0,length(temp));    
          end else
            j := j + 1;
        end;

        if (not(found)) then
          writeln('Barang tidak ada')
        else
          writeln('Barang berhasil dijual');
      end else
      Begin
        write ('Stok toko: ');
        while (j < length(stok)-1) do
        Begin
          if(stok[j] = 'null') then
            j:= j + 1
          else
            write(stok[j],', ');
            j:= j+1;
        end;
        if(stok[j] <> 'null') then
        Begin
          writeln(stok[j]);
          j:= j+1;
        end;
      end;
    end;
    writeln('Barang sudah habis, silahkan melakukan restok barang');
  end.

-Penjelasan solusi:
  Solusi untuk persoalan ini adalah dengan menyimpan seluruh barang ke dalam array. Saat akan menjual, program akan mengecek apakah nama barang yang akan dijual terdapat di dalam array atau tidak. Jika ada, maka barang tersebut akan dikeluarkan dari array dan mengurangi jumlah barang yang berada di dalam array. Apabila tidak terdapat barang dengan nama tersebut, program akan mengeluarkan pesan error dan kembali ke dalam menu pilihan. Program akan berhenti setelah seluruh barang terjual ( tidak terdapat barang lagi di dalam array ).

-----------------------------------
# Bab 5 Problem 12

-Deskripsi Soal:
  Program dapat membaca file eksternal 'contour.txt' yang berisi matrix kontur tanah dengan ketinggian yang berbeda - beda . Setelah file eksternal dibaca, program akan memproses matrix untuk menentukan luas maksimum persegi yang dapat dibuat dari matrix dengan ketinggian yang sama.

-Source Code:
  Program Matriks_FileEksternal;

  function Min ( a ,b, c: integer) : integer;
  Begin
    if (a <= b) then
    Begin
      if (a <= c) then
      Begin
        Min:=a;
      end else
      Begin
        Min:=c;
      end;
    end else
    Begin
      if (b <= c) then
      Begin
        Min:=b;
      end else
      Begin
        Min:=c;
      end;
    end;
  end;

  function Max (a,b : integer) : integer;
  Begin
    if (a >= b) then
    Begin
      Max:=a;
    end else
    Begin
      Max:=b;
    end;
  end;

  {Main program}
  var
    inputfile: TextFile;
    size,i,j, maxSize: integer;
    contour : array of array of integer;
    squareSize : array of array of integer;
  Begin
    //read file
    assign(inputfile, 'contour.txt');
    reset (inputfile);
    readln(inputfile, size);
    SetLength(contour, size, size);
    SetLength(squareSize, size, size);
    for i:=0 to size-1 do
    Begin
      for j:=0 to size-1 do
      Begin
        read(inputfile, contour[i][j]);
      end;
    end;
    close(inputfile);
    writeln('File loaded!');
    
    //proses
    maxSize := 1;
    for i:=0 to size-1 do
    Begin
      for j:=0 to size-1 do
      Begin
        if (i = 0) or (j = 0) then //baris paling atas dan kolom paling kiri tidak dapat membentuk persegi dikarenakan posisi (i,j) yang berada di titik paling kanan bawah persegi.
        Begin
          squareSize[i][j]:= 1;
        end else
        Begin
          if (contour[i][j] = contour[i][j-1]) and (contour[i][j] = contour[i-1][j]) and (contour[i][j] = contour[i-1][j-1]) then
          Begin
            squareSize[i][j]:= Min(squareSize[i][j-1] , squareSize[i-1][j], squareSize[i-1][j-1]) + 1;
          end else
          Begin
            squareSize[i][j]:=1;
          end;
          maxSize:=Max(maxSize, squareSize[i][j]); //mencari size terbesar
        end;
      end;
    end;
    writeln('Luas maksimum Krasti Krab yang dapat dibangun adalah ',maxSize*maxSize);
  end.


-Deskripsi Solusi:
  Program membaca matrix dari file 'contour.txt'. Matrix kemudian diproses untuk menentukan luas maksimum persegi terbesar yang dapat dibuat.
  Proses yang dilakukan untuk mencari maksimum persegi terbesar adalah dengan dynamic programming dimana terdapat sebuah matrix lain yang menyimpan nilai sisi persegi terbesar yang dapat dibuat (nilai N terbesar pada persegi N x N yang terbentuk) . Nilai N tersebut disimpan di dalam cell (i,j) dengan posisi (i,j) adalah titik paling kanan bawah pada persegi yang terbentuk. Setelah didapatkan nilai N terbesar, program akan mengeluarkan output luas yang didapatkan dari N x N.

