# Seleksi 1 Asisten LabPro 2018
-----------------------------------
### **13516145** - **Daniel Yudianto**

------

## Bab 1 - Percabangan
---------------------------------
### Deskripsi Problem 1
Tuan Vin diminta oleh temannya untuk mencatat jurusan-jurusan teman seangkatannya. Karena jumlahnya banyak, Tuan Vin tidak ingat siapa masuk jurusan mana. Dia hanya tahu bahwa 3 angka pertama NIM temannya menunjukkan jurusan mereka.


| Kode    | Jurusan                        |
| ------- | ------------------------------ |
| 135     | Teknik Informatika             |
| 180     | Teknik Tenaga Listrik          |
| 181     | Teknik Telekomunikasi          |
| 182     | Sistem Teknologi dan Informasi |
| Lainnya | ???                            |


Karena Tuan Vin harus menyerahkan hasilnya secepatnya, Tuan Vin meminta bantuan Anda untuk mempermudah pekerjaannya.


**Format Input & Output (input di-*bold*)**
***
Masukan Nama : **Kevin**

Masukan NIM : **13520001**

Kevin adalah mahasiswa Teknik Informatika
***
Masukan Nama : **Richard**

Masukan NIM : **18120999**

Richard adalah mahasiswa Teknik Telekomunikasi
***
Masukan Nama : **Albert**

Masukan NIM : **17720900**

Albert adalah mahasiswa ???
***

NIM dipastikan selalu 8 angka

### Source Code dan Penjelasan 

#### Source Code
```Pascal
program JurusanCheck;

(* DICTIONARY *)
var
	Nama : string;
    Nim : string;
	Jurusan : string;
	nimHead : string;
	
(* MAIN PROGRAM *)
Begin
	//Input
	write('Masukkan Nama : ');
	readln(nama);
	write('Masukkan NIM : ');
	readln(nim);
	
	//Proses
	nimHead := '000';
	nimHead[1] := nim[1];
	nimHead[2] := nim[2];
	nimHead[3] := nim[3];
	case nimHead of
		'135' : Jurusan := 'Teknik Informatika';
		'180' : Jurusan := 'Teknik Tenaga Listrik';
		'181' : Jurusan := 'Teknik Telekomunikasi';
		'182' : Jurusan := 'Sistem Teknologi dan Informasi';
		else Jurusan := '???';
	end;
	
	//Output
	write(Nama);
	write(' adalah mahasiswa ');
	write(Jurusan); 
	
End.
```
#### Penjelasan 
Penyelesaian dari permasalahan ini cukup sederhana, yaitu dengan membandingkan tiga angka pertama dari suatu NIM dengan ketentuan yang sudah ada. Pendekatan yang dilakukan oleh pembuat program adalah dengan pertama-tama mengambil tiga angka pertama dari nim tersebut dan memasukkannya ke dalam sebuah variabel string sementara yang berukuran tiga. Kemudian, barulah variabel tersebut dibandingkan dengan string lain (misal '135').

Pendekatan ini dilakukan dengan ide untuk memudahkan apabila ingin ditambahkan jurusan lain ke dalam program, sehingga hanya perlu menambahkannya di bagian *case* dari program.

---------------------------------


---------------------------------


## Bab 2 - Pengulangan
---------------------------------
### Problem 12


Setelah selesai sidang tugas akhir di ITB, seorang mahasiswa ingin membuka sebuah restoran. Mahasiswa itu pun mengadakan survey, dan ternyata mahasiswa ITB senang makan pizza. Oleh karenanya, mahasiswa tersebut memutuskan untuk menjual pizza. Karena malas, mahasiswa tersebut ingin mengetahui berapa kali ia harus melakukan pemotongan pizza untuk memotong pizza tersebut menjadi **N** bagian. Contohnya adalah sebagai berikut.




Dapat dilihat pada gambar, untuk memotong pizza menjadi **4** bagian, mahasiswa tersebut perlu memotong pizza sebanyak **2** kali. Untuk menghitung jumlah pemotongan yang dibutuhkan, maka mahasiswa tersebut memutuskan untuk membuat sebuah program. Program tersebut menerima angka jumlah pemotongan, dan akan mengeluarkan jumlah potongan maksimal yang didapat. Berikut ini adalah contoh masukan dan keluaran dari program dari program


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan jumlah pemotongan :2  
Potongan maksimal yang didapat adalah 4  


Masukan jumlah pemotongan :7  
Potongan maksimal yang didapat adalah 29  
```
**Hint :** 
Rumus untuk mengitung jumlah pemotongan ke n adalah
*f(n) = n + f(n - 1)*, dimana f(0) = 1

### Source Code dan Penjelasan 

#### Source Code
```Pascal
program PizzaCutCounting;
//Program untuk menentukan maksimal jumlah potongan dari sebuah input

(* DICTIONARY *)
var
	N : integer;
	result : integer;


(* MAIN PROGRAM *)
Begin
	//INPUT
	write('Masukkan jumlah pemotongan : ');
	readln(N);
	result := 0;
	
	//PROSES
	// f(n) = n + f(n - 1), n > 0
	while N > 0 do
	begin
		result := result + N;
		N := N - 1;
	end;
	//Mencapai basis
	result := result + 1;
	
	//OUTPUT
	write('Potongan maksimal yang didapat adalah ');
	write(result);
End.
```
#### Penjelasan 
Pada permasalahan ini, digunakan sebuah loop yang merupakan hal yang sama dengan fungsi f(n) = n + f(n - 1), dengan f(0) = 1. Bagian f(n) = n + f(n-1) ditunjukkan pada fungsi while, dengan result ditambahkan dengan N setiap kali loop berjalan. f(n-1) ditunjukkan pada N yang berkurang satu setiap iterasi. Setelah loop berakhir, result ditambahkan satu karena sudah mencapai basis.  


-----------------------
------

## Bab 3 - Fungsi dan Prosedur
### Problem 11

Bilangan menanjak adalah bialngan yang memiliki angka pada digit satuan lebih kecil dari digit puluhan, pada digit puluhan lebih kecil dari digit ratusan, dan seterusnya. Buatlah sebuah program yang memeriksa apakah sebuah bilangan N (0 ≤ N < 2000000000) adalah bilangan menanjak atau bukan!


**Format Input & Output (input di-*bold*)**
***
Masukkan N: **987654321**

Bilangan 987654321 adalah bilangan menanjak.
***
Masukkan N: **1**

Bilangan 1 adalah bilangan menanjak.
***
Masukkan N: **123456789**

Bilangan 123456789 bukan bilangan menanjak.
***

### Source Code dan Penjelasan 

#### Source Code
```Pascal
program BilanganMenanjak;
//Program untuk menentukan apakah x bilangan menanjak

(* DICTIONARY *)
var
	N : Int64; 

(* FUNCTIONS *)
function IsMenanjak (X:Int64) : boolean;
//Fungsi penentu apakah X bilangan menanjak
begin
	if (X >= 10) AND (X mod 10 < ((X div 10) mod 10))
	then IsMenanjak (X div 10)
	else if X < 10 
	then IsMenanjak := true
	else IsMenanjak := false; 
end;

(* MAIN PROGRAM *)
Begin
	//INPUT
	write('Masukkan N : ');
	readln(N);
	write('Bilangan ');
	write(N);
	//PROSES + OUTPUT
	if IsMenanjak(N) 
	then write(' adalah bilangan menanjak') 
	else write(' bukan bilangan menanjak');
End.
```
#### Penjelasan 
Ide dasar untuk menyelesaikan masalah ini adalah membandingkan apakah satuan lebih kecil dari puluhan dan apakah puluhan lebih kecil dari ratusan, dan seterusnya. Yang dilakukan untuk menyelesaikan masalah ini adalah mencoba terlebih dahulu apakah satuan lebih kecil dari puluhan. Jika iya, maka fungsi IsMenanjak dipanggil kembali dengan argumen yang berisi bilangan yang satuannya sudah 'dihilangkan', sehingga berarti puluhan dari bilangan aslinya telah menjadi satuan, dan kemudian proses pengecekan diulang kembali sampai sisa satu digit. Apabila sudah tersisa satu digit, berarti bilangan memang menanjak, tetapi apabila ketika dalam proses pengecekan ditemukan satuan yang lebih besar dari pada puluhan, maka proses dihentikan dan menandakan bahwa bilangan tidak menanjak.

-----------------
------

## Bab 4 - *Array*
### Problem 10

Julia baru saja membolos kelas kalkulus. Padahal saat itu baru saja diajarkan tentang integral persamaan matematika biasa. Sebagai teman yang baik, buatlah sebuah program yang dapat melakukan integral pada persamaan matematika

**Format Input & Output (input di-*bold*)**
***
Masukkan pangkat paling besar : **1**

Masukkan koefisien x^1 : **5**

Masukkan koefisien x^0 : **2**

Maka hasil integralnya adalah 2.5x^2 + 2x^1 + c
***
***
Masukkan pangkat paling besar : **2**

Masukkan koefisien x^2 : **6**

Masukkan koefisien x^1 : **3**

Masukkan koefisien x^0 : **2**

Maka hasil integralnya adalah 2x^3 + 1.5x^2 + 2x^1 + c
***

### Source Code dan Penjelasan 

#### Source Code
```Pascal
program Integral;
//Program untuk mengintegral, dengan input koefisien.
uses sysutils;
//Untuk kepentingan display

(* DICTIONARY *)
var
	power : integer;
	equation : array[1..100] of real;
	i : integer;

Begin
	//INPUT + PROSES
	write('Masukkan pangkat paling besar : ');
	readln(power);
	for i := power downto 0 do
	begin
		write('Masukkan koefisien x^');
		write(i);
		write(' : ');
		//Masukkan ke arrindex ke i+1
		readln(equation[i+1]);
		//Langsung 'integralkan'
		equation[i+1] := equation[i+1]/(i+1);
	end;
	
	//OUTPUT
	write('Maka hasil integralnya adalah ');
	for i := power+1 downto 1 do
	begin
		//Note: FloatToStrf berfungsi untuk mengubah nilai real menjadi string
		//dengan format yang lebih 'appealing'.
		if (i = (power + 1)) AND (equation[i] > 0) then
		begin
			write(FloatToStrf(equation[i],FFGeneral,8,2));
			write('x^');
			write(i);
		end
		else if equation[i] < 0 then
		begin
			write(' - ');
			write(FloatToStrf(equation[i],FFGeneral,8,2));
			write('x^');
			write(i);
		end
		else //i <> power+1 and eq[i]> 0
		begin
			write(' + ');
			write(FloatToStrf(equation[i],FFGeneral,8,2));
			write('x^');
			write(i);
		end;
	end;
	write(' + c');
	
End.
```
#### Penjelasan 
Pendekatan yang dilakukan adalah dengan 'langsung mengintegralkan' hasil input dan langsung memasukannya ke dalam array yang sudah merupakan hasil integral. Itulah mengapa input dimasukkan ke equation[i+1], kemudian langsung dibagi dengan i+1 (yaitu pangkat yang telah dinaikkan). Kemudian setelah itu, hasil integral dicetak.

-----------------
-----------------
## Bab 5 - Matriks dan File Eksternal
### Problem 9

Kota Bikini Batem pada masa depan sudah penuh sesak dengan penduduk. Saking sesaknya, rumah-rumah penduduk saling berdekatan satu sama lain dan dapat digambarkan sebagai *cell* matriks persegi (berukuran `N`x`N`). Suatu hari, sebuah virus mematikan menyerang kota tersebut. Pada awalnya, hanya ada beberapa rumah yang terjangkit. Namun, dalam satu hari virus ini dapat menjangkit tetangga dari rumah tersebut. Tetangga dalam hal ini didefinisikan sebagai *cell-cell* yang bersinggungan dengan *cell* tersebut (satu *cell* maksimal mempunyai 8 tetangga). Tugas Anda adalah menghitung berapa lama waktu yang dibutuhkan (dalam hari) untuk virus tersebut menjangkit seluruh kota.

**Format *Input* dan *Output***
*Input* berupa kondisi awal kota ketika virus pertama kali menjangkit, yang disimpan dalam file eksternal `city.txt`. Rumah yang sehat direpresentasikan dengan karakter `H`, dan rumah yang terjangkit direpresentasikan dengan karakter `U`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah karakter yang merupakan elemen matriks pada baris tersebut.
*Output* berupa informasi mengenai lama waktu yang dibutuhkan hingga seluruh rumah di kota Bikini Batem terjangkit virus.

**Contoh**

- city.txt

```
3
H H H
H U H
H H H
```

- *runtime program*

```
matriks loaded!
Lama waktu apocalypse adalah 1 hari
```

-----------------------------------


### Source Code dan Penjelasan 

#### Source Code
```Pascal
program VirusSpread;

(* DICTIONARY *)
uses sysutils;

const
	FILENAME = 'city.txt';

var
	Size : integer;
	InFile : TextFile;
	Map : array of array of char;
	i, j : integer;
	temp : char;
	VirusCount : integer;
	Days : integer;

(* MAIN PROGRAM *)
Begin
	//FILE INIT
	assign(InFile,FILENAME);
	reset(InFile);
	readln(InFile, Size);
	setlength(Map,Size,Size);
	VirusCount := 0;
	i := 0;
	j := 0;
	//INPUT
	while not eof(InFile) do
	begin
		read(InFile, temp);
		if (temp = 'H') OR (temp = 'U') then
		begin
			Map[i,j] := temp;
			j := j + 1;
			if temp = 'U' 
			then VirusCount := VirusCount + 1;
		end;
		if j = Size then
		begin
			j := 0;
			i := i + 1;
		end;
	end;
	writeln('Matrix loaded!');
	close(InFile);
	
	//PROSES
	Days := 0;
	while (VirusCount < Size*Size) do
	begin
		//Begin the spreading - marked by X.
		for i := 0 to Size-1 do 
		begin
			for j := 0 to Size-1 do
			begin
				//If tile is 'U' (virus), then spread it to adjacent tiles, except out of bounds and already infected.
				if (Map[i,j] = 'U') then
				begin
					if ((i-1) >= 0) then
					begin
						if((Map[i-1,j] <> 'U') AND (Map[i-1,j] <> 'X')) then
						begin
							Map[i-1,j] := 'X';
							VirusCount := VirusCount + 1;
						end;
						
						if ((j-1) >= 0) then
						begin
							if((Map[i-1,j-1] <> 'U') AND (Map[i-1,j-1] <> 'X')) then
							begin
								Map[i-1,j-1] := 'X';
								VirusCount := VirusCount + 1;
							end;
						end;
						if ((j+1) < Size) then
						begin
							if((Map[i-1,j+1] <> 'U') AND (Map[i-1,j+1] <> 'X')) then
							begin
								Map[i-1,j+1] := 'X';
								VirusCount := VirusCount + 1;
							end;
						end;
					end;
					if ((i+1) < Size) then
					begin
						if((Map[i+1,j] <> 'U') AND (Map[i+1,j] <> 'X')) then
						begin
							Map[i+1,j] := 'X';
							VirusCount := VirusCount + 1;
						end;
						if ((j-1) >= 0) then
						begin
							if((Map[i+1,j-1] <> 'U') AND (Map[i+1,j-1] <> 'X')) then
							begin
								Map[i+1,j-1] := 'X';
								VirusCount := VirusCount + 1;
							end;
						end;
						if ((j+1) < Size) then
						begin
							if((Map[i+1,j+1] <> 'U') AND (Map[i+1,j+1] <> 'X')) then
							begin
								Map[i+1,j+1] := 'X';
								VirusCount := VirusCount + 1;
							end;
						end;	
					end;
					if ((j-1) >= 0) then
					begin
						if((Map[i,j-1] <> 'U') AND (Map[i,j-1] <> 'X')) then
						begin
							Map[i,j-1] := 'X';
							VirusCount := VirusCount + 1;
						end;
					end;
					if ((j+1) < Size) then
					begin
						if((Map[i,j+1] <> 'U') AND (Map[i,j+1] <> 'X')) then
						begin
							Map[i,j+1] := 'X';						
							VirusCount := VirusCount + 1;
						end;
					end;
				end;
			end;
		end;
		
		//Add a day, replace all Xs with Us.
		Days := Days + 1;
		for i:= 0 to Size-1 do
		begin
			for j := 0 to Size-1 do
			begin
				if(Map[i,j] = 'X') 
				then Map[i,j] := 'U';
			end;
		end;
		
	end;
	writeln('Lama waktu apocalypse adalah ', Days, ' hari');
End.
```
#### Penjelasan 
Ide dari penyelesaian permasalahan ini adalah dengan "mensimulasikan" terjadinya penyebaran virus tersebut. Jadi, pertama-tama input yang dimasukkan ke dalam program dihitung berapakah size map dan jumlah virus yang ada. Kemudian, akan terjadi pengulangan terus-menerus yang mensimulasikan penyebaran virus dengan cara mengubah sekitarnya menjadi 'X' (bukan 'U' untuk membedakan iterasi sebelumnya dan saat ini). Setelah iterasi selesai, 'X' tersebut diubah menjadi 'U', dan demikianlah penyebaran satu hari, sehingga satu hari ditambahkan ke dalam sebuah variabel yang menghitung jumlah hari penyebaran. Hal ini terus terjadi hingga jumlah virus sudah sama dengan jumlah kotak di map (ukuran map dikuadrat).
