# Tugas-1-Labpro
Tugas 1 untuk seleksi asisten labpro
Dibuat oleh Iqrar Aminullah 13516126

## Bab 1 - Percabangan

Tuan Vin sedang belajar tentang trigonometri. Dia tahu bahwa nilai sin suatu sudut tergantung kuadrannya, dimana pada kuadran 1 sin(a) = sin(a), kuadran 2 sin(180-a) = sin(a), kuadran 3 sin(180+a) = -sin(a), kuadran 4 sin(360-a) = -sin(a). Tuan Vin menantang Anda untuk membuat kalkulator untuk mempermudah perhitungan sin dengan mengubah sudutnya menjadi antara 0 sampai 90. Dapatkah Anda menjawab tantangan Tuan Vin? (0 dan 90 dihitung kuadran 1, 180 dihitung kuadran 2, 270 dihitung kuadran 3 dan 360 dihitung kuadran 4. Nilai sudut selalu di antara 0 hingga 360).


**Format Input & Output (input di-*bold*)**
***
Masukan nilai sudut: **150**

sin(150) = sin(30)
***
Masukan nilai sudut: **75**

sin(75) = sin(75)
***
Masukan nilai sudut: **270**

sin(270) = -sin(90)
***

**Solusi**

Kasus - kasus yang mungkin terjadi berdasarkan input a adalah
 - Inputan berada dalam kuadran 1 ( Bernilai >0 dan <= 90 ) -> Sin(a) = Sin(x) sehingga x = a
 - Inputan berada dalam kuadran 2 ( Bernilai >90 dan <= 180 ) -> Sin(a) = Sin(180-x) sehingga x = 180-a 
 - Inputan berada dalam kuadran 3 ( Bernilai >180 dan <= 270 ) -> -Sin(a) = Sin(180+x) sehingga x = a-180
 - Inputan berada dalam kuadran 4 ( Bernilai >270 dan <= 360 ) -> -Sin(a) = Sin(360-x) sehingga x = 360-a

**Solusi program dalam bahasa Pascal**

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

## Bab 2 - Pengulangan

Seorang mahasiswa mengklasifikasikan sebuah bilangan menjadi 3 kategori, yaitu **bilangan A**, **bilangan B**, dan **bilangan C**. 
- **Bilangan A** adalah bilangan yang seluruh faktornya kurang dari nilai bilangan tersebut.
- **Bilangan B** adalah bilangan yang seluruh faktornya sama dari nilai bilangan tersebut.
- **Bilangan C** adalah bilangan yang seluruh faktornya lebih dari nilai bilangan tersebut. 


Yang disebut faktor pada sebuah bilangan **N** adalah bilangan yang dapat membagi bilangan **N** sampai habis dan tidak sama dengan bilangan **N** tersebut. 
Bantulah mahasiswa tersebut dengan membuat program yang membaca angka dari **X** sampai **Y**, lalu menerima inputan tipe bilangan apa yang diinginkan, lalu mencetak seluruh bilangan tersebut ke layar. Jika tidak ada, maka cetak **Tidak ada**.


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan X :1  
Masukan Y :10  
Masukan tipe bilangan :B  
Tipe bilangan B pada rentang 1 sampai 10 adalah  
6  
```
*(penjelasan : bilangan 6 memiliki faktor (1,2,3) yang nilai totalnya adalah 6)*
```
Masukan X :5  
Masukan Y :10  
Masukan tipe bilangan :A  
Tipe bilangan A pada rentang 5 sampai 10 adalah  
5  
7  
8  
9  
10  
```
*(penjelasan : bilangan 5 memiliki faktor (1) )*
```
Masukan X :5  
Masukan Y :10  
Masukan tipe bilangan :C  
Tipe bilangan C pada rentang 1 sampai 10 adalah  
Tidak ada
```

**Solusi**

Untuk menyelesaikan persoalan ini, akan mudah dikerjakan dengan pengulangan traversal.
Dalam pengulangan, untuk setiap bilangan di antara X dan Y, dihitung jumlah dari faktor - faktornya.
Apabila dicari biangan tipe A, maka dicari bilangan I yang jumlah dari faktor - faktornya < I. 
Apabila dicari biangan tipe B, maka dicari bilangan I yang jumlah dari faktor - faktornya = I.
Apabila dicari biangan tipe C, maka dicari bilangan I yang jumlah dari faktor - faktornya > I.

**Solusi program dalam bahasa pascal**

Program FactorType;

var

	i, x, y : Integer;
	numType : Char;
    numExist : Boolean;

function sumFactors( x : integer) : integer;
{I.S. X terdefinisi
F.S. mengembalikan jumlah faktor -faktor dari X}

var

    sum, i : integer;

begin

    sum := 0;
    for i:=1 to x-1 do
    begin
        if( x mod i = 0) then
        begin
            sum := sum + i;
        end;
    end;
    sumFactors := sum;

end;

begin

	write( 'Masukkan X :' ); {Membaca Input}
    readln( x );
    write( 'Masukkan Y :' );
    readln( y );
    write( 'Masukkan tipe bilangan  :' );
    readln( numType );
    numExist := false;
    writeln( 'Jumlah bilangan ', numType , ' pada rentang ', x , ' sampai ' , y , ' adalah' );
    for i := x to y do {Memulai traversal dari X hingga Y}
    begin
        if( numType = 'A') then {Jika dicari bilangan tipe A}
        begin
            if( sumFactors(i) < y ) then
            begin
                writeln(i);
                numExist := true;
            end
        end else if ( numType = 'B') then {Jika dicari bilangan tipe B}
        begin
            if( sumFactors(i) = y ) then
            begin
                writeln(i);
                numExist := true;
            end
        end else if ( numType = 'C') then {Jika dicari bilangan tipe C}
        begin
            if( sumFactors(i) > y ) then
            begin
                writeln(i);
                numExist := true;
            end
        end;
    end;
    if( numExist = false ) then {Jika bilangan tidak ditemukan}
    begin
        writeln('Tidak ada');
    end;

end.


## Bab 3 - Fungsi dan Prosedur

Saat sedang mengerjakan PR kalkulus, seorang mahasiswa mendapatkan soal berikut.


> Diberikan fungsi sebagai berikut.
`f(x) = 2x^5 + 3x^4 + 9x^3 − x^2 + 3x − 2`  untuk semua bilangan bulat positif x kurang dari 30.
Carilah nilai x berdasarkan nilai f(x) yang diberikan.


Karena *deadline* PR kalkulus tinggal 1 jam lagi, bantulah mahasiswa tersebut untuk mengerjakan soal tersebut!


**Format Input & Output (input di-*bold*)**
***
Masukan f(x) : **14**

Nilai x adalah 1   
***
Masukan f(x) : **1700818**

Nilai x adalah 15
***
Masukan f(x) : **2**

Tidak ada x yang sesuai
***


**Catatan:**

Anda diwajibkan membuat fungsi f(x) untuk nilainya dicocokan dengan masukan.

**olusi**

Untuk menyelesaikan persoalan ini diperlukan dua fungsi.
Fungsi yang pertama adalah untuk menghitung a^x untuk digunakan di f(x).
Fungsi yang kedua adalah untuk menghitung f(x).
Pada program utama, setelah pembacaan input, dilakukan pengulangan untuk menghitung f(1) sampai f(30).
Pengulangan dilakukan selama f(x) belum ditemukan  dan x<=30
Jika ditemukan f(x) yang nilainya sama dengan input, maka pengulangan dihentikan dan program akan mencetakan nilai x.

**Solusi program dalam bahasa Pascal**
Program Fx;

var
	i , input : Integer;
	found : Boolean;

function power( x , a : Integer ) : Integer;
{I.S. : x dan a terdefinisi
F.S. : mengembalikan x^a}
var

	i : Integer;

begin

	power := 1;
	for i := 1 to a do
	begin
		power := power * x;
	end;

end;

function f( x : integer ) : integer;
{I.S. : x terdefinisi
F.S. mengembalikan f(x) = 2x^5 + 3x^4 + 9x^3 − x^2 + 3x − 2}

begin

	f := 2 * power(x, 5) + 3 * power(x, 4) + 9 * power(x, 3) - power(x, 2) + 3 * x - 2;

end;

begin

	i := 1; {Inisialisasi}
	found := false;
	write( 'Masukkan f(x) :'); {Membaca Input} 
	readln( input );
	while not( found ) and ( i <= 30 ) do {Pengulangan dari 1 sampai 30}
	begin
		if ( f(i) = input ) then {Jika ditemukan f(x) = input}
		begin
			found := true;
			writeln( 'Nilai x adalah ', i);
		end;
		i := i + 1;
	end;
	if( not( found )) then {JIka tidak ditemukan f(x) = input}
	begin
		writeln( 'Tidak ada x yang sesuai' );
	end;

end.

## Bab 4 - Array

Lucio diminta oleh orangtuanya untuk menduplikat kunci kamar hotel yang tidak ada cadangannya. Setiap kunci, memiliki nomor yang menandakan nomor kamar. Buatlah program untuk menentukan mana saja kunci yang harus diduplikat oleh Lucio

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah kunci yang ada : **10**

Masukkan nomor ruangan kunci yang ada :

102

105

102

103

102

201

202


Kunci yang harus diduplikat :

105

103

201

202
***

**Solusi**

Pada permasalahan ini, digunakan array untuk menyimpan daftar kunci yang tersedia
Setelah membaca inputan jumlah kunci yang ada beserta nomor kuncinya, akan dilakukan perhitungan jumlah kunci.
Untuk setiap elemen dari array, akan dihitung ada berapa jumlah elemen array yang bernilai sama dengan elemen tersebu.t.
Jika jumlah yang sama adalah 1, maka kunci tersebut harus diduplikat.

**Solusi program dalam bahasa Pascal**

Program Duplicate;

var

	keys			: array[1..30] of Integer;
	i, n, neff		: Integer;

function count( x : integer; arr : array of integer) : Integer;
{I.S. x dan arr terdefinisi, dimana arr adalah sebuah array of integer
F.S. Mengembalikan jumlah x dalam array}

var

	i 	: Integer;

begin

	count := 0;
	for i := 1 to neff do
	begin
		if( arr[ i ] = x )then
		begin
			count := count + 1;
		end;
	end;

end;

begin

	neff := 0; {Inisialisasi}
	write( 'Masukkan jumlah kunci yang ada : '); {membaca input}
	readln( n );
	writeln( 'Masukkan nomor kunci yang ada :');
	for i := 1 to n do {membaca input nomor kunci}
	begin
		neff := neff + 1;
		readln( keys[i] );
	end;
	writeln( 'Kunci yang harus diduplikat :');
	for i:= 1 to neff do {Menghitung jumlah kunci}
	begin
		if( count( keys[ i ], keys ) = 1) then {Memeriksa apakah kunci perlu diduplikat}
		begin
			writeln( keys[i] );
		end;
	end;

end.


## Bab 5 - File Eksternal 

Krasti Krab telah semakin maju. Kini, telah ada `N` kasir yang dapat melayani penjualan. Masing-masing kasir memiliki slot antrian sepanjang `M`. Tuan Krab ingin mengetahui panjang antrian yang paling panjang di antara semua kasir yang ada. Dia meminta bantuan Anda untuk memecahkan masalah tersebut.

**Format *Input* dan *Output***
*Input* berupa kondisi antrian disimpan dalam file `queue.txt`. Dalam file tersebut, baris pertama berisi 2 bilangan bulat positif `N` dan `M` yang merepresentasikan banyak kasir dan panjang slot antrian untuk setiap kasir. `N` baris berikutnya berisi `M` bilangan 0 atau 1 yang merepresentasikan kondisi antrian pada suatu kasir. Jika bernilai 0, maka slot tersebut kosong. Sebaliknya jika bernilai 1, maka slot tersebut terisi. Diasumsikan bahwa pengunjung yang baru datang akan memilih suatu kasir dan  **langsung mengambil slot terdepan yang tersedia pada kasir tersebut**. Oleh karena itu, pada setiap baris antrian kasir, tidak ada angka 0 yang berada di sebelah kanan angka 1.
*Output* berupa informasi mengenai panjang antrian terpanjang yang ada.

**Contoh**

- queue.txt

```
3 4
0 0 1 1
0 1 1 1
0 0 0 0
```

- *runtime program*

```
file loaded!
Antrian terpanjang adalah 3
```

-----------------------------------

**Solusi**
Untuk menyelesaikan permasalahan ini, program harus dapat membaca file eksternal.
Program akan melakukan pembacaan pada baris pertama, kemudian mencatat nilai N dan M.
Kemudian dilakukan pemeriksaan data antrian dengan menggunakan pengulangan secara traversal.
Untuk setiap antrian, dihitung panjang dari antrian tersebut. Catat panjang antrian apabila antrian lebih banjang dari antrian - antrian sebelumnya.
Program kemudian mengembalikan panjang antrian terpanjang.

**Solusi program dalam bahasa Pascal**

Program LongestQueue;

var

	queue			: file of Char;
	i, j , maxLength, nQueue, queueLength, maxQueue : Integer;
	N, M, status : char;
	
begin

	maxQueue := 0; {Inisialisasi}
	assign( queue, 'Queue.txt'); {Memulai pembacaan file}
	reset( queue );
	writeln( 'file loaded!');
	read( queue , n, m); {Membaca nilai N dan M}
	nQueue := Ord( n ) - 48; {Mengkonversi nilai N dan M dari char ke Integer}
	maxLength := Ord( m ) - 48;
	for i := 1 to nQueue do {Pengulangan untuk tiap antrian yang ada}
	begin
		queueLength := 0; {Inisialisasi panjang antrian}
		for j := 1 to maxLength do {Menghitung panjang antrian}
		begin
			repeat {Untuk mengabaikan karakter - karakter seperti spasi dan newline}
				read( queue, status );
			until( status = '0' ) or (status = '1');
			if( status = '1' ) then {JIka antrian terisi}
			begin
				queueLength := queueLength + 1; 
			end;
		end;
		if( queueLength > maxQueue ) then {Jika panjang antrian lebih panjang dari antrian - atrian sebelumnya}
		begin
			maxQueue := queueLength;
		end;
	end;
	writeln( 'Antrian terpanjang adalah ', maxQueue);
	close( queue ) {Menutup pembacaan file}

end.

-------
13516126 - Iqrar Aminullah