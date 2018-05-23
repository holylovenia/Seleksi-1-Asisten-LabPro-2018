# Seleksi 1 Asisten LabPro 2018

Pembuat : Shandy (13516097)

<br/>

# Soal dan Pembahasan

## Bab 1 - Problem 5
### Deskripsi Soal
Tuan Vin diminta oleh dosennya untuk mencatat nilai ujian dalam indeks A-E, sementara nilai yang disediakan dalam bentuk 0-100. Berikut adalah konversinya:
- 81 - 100: A
- 61 - 80: B
- 41 - 60: C
- 21 - 40: D
- 0 - 20: E

Karena banyak nilai yang harus dicatat, Tuan Vin meminta bantuan Anda untuk memudahkan merubah nilai.

**Format Input & Output (input di-*bold*)** <br/>
Masukan Nama : **Kevin** <br/>
Masukan Nilai : **88** <br/>
Kevin mendapat nilai A <br/>
<br/>
Masukan Nama : **Albert** <br/>
Masukan Nilai : **63** <br/>
Albert mendapat nilai B <br/>
<br/>

### *Source Code* Solusi
```C++
#include <iostream>
using namespace std;

char convertNilai(int nilai){
  if(nilai > 80 && nilai <= 100){
    return 'A';
  }
  else if(nilai > 60 && nilai <= 80){
    return 'B';
  }
  else if(nilai > 40 && nilai <= 60){
    return 'C';
  }
  else if(nilai > 20 && nilai <= 40){
    return 'D';
  }
  else if(nilai >= 0 && nilai <= 20){
    return 'E';
  }
}

int main() {

  char nama[64];
  int nilai;
  
  cout << "Masukkan Nama  : "; cin >> nama;
  
  do{
    cout << "Masukkan nilai : "; cin >> nilai;	
  } while(nilai < 0 || nilai > 100);
  
  cout << nama << " mendapat nilai " << convertNilai(nilai) << endl;
  
  return 0;
}

```
    
### Pembahasan Solusi
Solusi diatas menggunakan konsep percabangan pada bahasa pemrograman. Program akan menerima masukan berupa nama dan nilai pengguna. Masukan nilai akan dicek apakah diantara 0 dan 100. Jika tidak, program akan meminta masukan nilai kembali hingga masukan memenuhi syarat. Nilai akan dimasukkan ke dalam fungsi **convertNilai** yang akan mengubah nilai menjadi indeks. Nama dan indeks akan ditampilkan ke layar. Fungsi **convertNilai** menerima masukan berupa bilangan bulat (*int*) lalu mengecek jangkauan (*range*) nilai yang dipenuhi oleh masukan dan mengembalikan indeks yang bersesuain dengan jangkauan tersebut.
<br><br/>
<br><br/>


## Bab 2 - Problem 4
### Deskripsi Soal
Seorang asisten diminta untuk menghitung jumlah mahasiswa yang lulus dan yang tidak lulus. Seorang mahasiswa dianggap lulus jika nilainya **lebih besar** atau **sama dengan 60**. Karena malas, asisten tersebut meminta anda untuk membuat program untuk membantunya. 

**Format Input & Output** <br/>
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)* <br/>
Banyak mahasiswa : 4 <br/>
Nilai anak ke-1 : 50 <br/>
Nilai anak ke-2 : 90 <br/>
Nilai anak ke-3 : 55 <br/>
Nilai anak ke-4 : 90 <br/>
Total mahasiswa yang lulus adalah 2 <br/>
Total mahasiswa yang tidak lulus adalah 2 <br/>
<br/>
Banyak mahasiswa : 2 <br/>
Nilai anak ke-1 : 76 <br/>
Nilai anak ke-2 : 100 <br/>
Total mahasiswa yang lulus = 2 <br/>
Total mahasiswa yang tidak lulus = 0 <br/>  

### *Source Code* Solusi
```C++
#include <iostream>
using namespace std;

int main(){
    int N, numPass = 0;
    do{
      cout << "Banyak mahasiswa : "; cin >> N;
    } while(N < 0);
    
    for(int i = 0 ; i < N; i++){
      int nilai;
      do{
        cout << "Nilai anak ke-" << i+1 << " : "; cin >> nilai;
      } while(nilai < 0 || nilai > 100);
      
      if(nilai >= 60 && nilai <= 100){
        numPass++;
      }
    }
    
    cout << "Total mahasiswa yang lulus adalah " << numPass << endl;
    cout << "Total mahasiswa yang tidak lulus adalah " << N-numPass << endl;
    return 0;
}
```

### Pembahasan Solusi
Pertama, program akan membuat sebuah variabel bernama **numPass** dengan nilai awal **0** yang menampung jumlah mahasiswa yang lulus. Selanjutnya, program diatas akan menerima banyak mahasiswa yang akan dimasukkan nilainya. Program melakukan pengecekkan masukan banyak mahasiswa sehingga masukan tidak negatif. Setelah masukan banyak mahasiswa valid, program akan meminta masukan nilai sambil dilakukan pengecekkan dengan nilai valid 0-100 sebanyak jumlah mahasiswa yang dimasukkan. Jika nilai yang dimasukkan bernilai diatas atau sama dengan 60 (>=60) maka program akan melakukan *increment* pada variabel **numPass**. Program kemudian menampilkan jumlah mahasiswa yang lulus dan yang tidak lulus.
<br><br/>
<br><br/>


## Bab 3 Problem 2
### Deskripsi Soal
Dalam dunia komputer, sering digunakan istilah *hexadecimal*, yaitu bilangan berbasis 16 (desimal adalah bilangan berbasis 10).Berikut adalah tabel yang membandingkan desimal dengan heksadesimal

| Desimal | Heksadesimal | Desimal | Heksadesimal |
| ------- | ------------ | ------- | ------------ |
| 0       | 00           | 9       | 09           |
| 1       | 01           | 10      | 0A           |
| 2       | 02           | 11      | 0B           |
| 3       | 03           | 12      | 0C           |
| 4       | 04           | 13      | 0D           |
| 5       | 05           | 14      | 0E           |
| 6       | 06           | 15      | 0F           |
| 7       | 07           | 16      | 10           |
| 8       | 08           | 17      | 11           |


Buatlah program yang menjumlahkan dua bilangan heksadesimal dua digit menjadi bilangan
heksadesimal! (Buatlah fungsi HexToDec() dan DecToHex())

**Format Input & Output (input di-*bold*)** <br/>
Masukan A : **11** <br/>
Masukan B: **05** <br/>
11 + 05 = 16 <br/>
<br/>
Masukan A : **1D** <br/>
Masukan B: **2B** <br/>
1D + 2B = 48 <br/>

### *Source Code* Solusi
```C++
#include <iostream>
#include <sstream>
#include <string>
#include <math.h>
using namespace std;

string IntToString(int val){
	stringstream out;
	out << val;
	return (out.str());
}

int CharToInt(char val){
	return (val - '0');
}

int HexToDec(string hex){
	int dec = 0, exp = hex.length()-1;
	// Interval dari kiri ke kanan.
	// Setiap digit dikali dengan ekivalen desimalnya (16^exp) ditambahkan ke dec
	for(int i = 0; i < hex.length(); i++){
		switch(hex[i]){
			case 'A': dec += (10 * pow(16,exp)); break;
			case 'B': dec += (11 * pow(16,exp)); break;
			case 'C': dec += (12 * pow(16,exp)); break;
			case 'D': dec += (13 * pow(16,exp)); break;
			case 'E': dec += (14 * pow(16,exp)); break;
			case 'F': dec += (15 * pow(16,exp)); break;
			default: dec += (CharToInt(hex[i]) * pow(16,exp)); break;
		}
		exp--;
	}	

	return dec;
}

string DecToHex(int dec){
	string hex = "";
	int result = dec;

	// modulo 16 dari result merupakan digit paling depan hex
	// result kemudian dibagi bulat dengan 16
	// Loop terus hingga result = 0
	do {
		int remainder = result % 16;
		switch(remainder) {
			case 10: hex.insert(0,"A"); break;
			case 11: hex.insert(0,"B"); break;
			case 12: hex.insert(0,"C"); break;
			case 13: hex.insert(0,"D"); break;
			case 14: hex.insert(0,"E"); break;
			case 15: hex.insert(0,"F"); break;
			default: hex.insert(0, IntToString(remainder)); break;
		}
		result = result/16;
	}
	while (result > 0);

	return hex;
}

int main() {
	string A,B, result;
	cout << "Masukan A : "; cin >> A;
	cout << "Masukan B : "; cin >> B;

	result = DecToHex(HexToDec(A) + HexToDec(B));

	cout << A << " + " << B << " = " << result << endl;	

	return 0;
}
```
### Pembahasan Solusi
Program menggunakan beberapa *library* bawaan C++, seperti *sstream* dan *math.h*.<br/>
- Fungsi **IntToString** berfungsi untuk mengubah *integer* menjadi *string* dengan bantuan *stringstream*. <br/>
- Fungsi **CharToInt** berfungsi untuk mengubah *char* menjadi *integer*. <br/>
- Fungsi **HexToDec** berfungsi untuk mengubah bilangan heksadesimal menjadi bilangan desimal dengan masukan heksadesimal dalam bentuk *string*.
  - Pertama, fungsi akan menginisialisasi variabel **dec** dengan nilai awal **0** untuk menampung nilai desimal dan **exp** untuk menampung besar pangkat dengan nilai awal berupa panjang digit heksadesimal dikurangi 1.
  - Kemudian, fungsi akan melakukan transversal dari digit paling kiri heksadesimal. Jika digit tersebut bernilai A-F, maka akan disesuaikan dengan besar desimalnya, yakni 10-15. Jika digit tersebut bernilai 1-9 maka fungsi akan menggunakan fungsi lain yakni fungsi **CharToInt** untuk merubah digit tersebut menjadi desimal.
  - Digit tersebut kemudian dikalikan dengan (16 ^ **exp**) dan ditambahkan ke **dec**. Nilai **exp** dikurangi 1.
  - Hal ini dilakukan secara berulang hingga transversal mencapai akhir kanan heksadesimal.
- Fungsi **DecToHex** berfungsin untuk mengubah bilangan desimal menjadi bilangan heksadesimal dengan masukan desimal berupa *integer*
  - Pertama, fungsi akan menginisalisi variabel **hex** bertipe *string* dengan nilai awal berupa *string* kosong dan variabel *integer* bernama **result** dengan nilai awal adalah masukan desimal.
  - **result** kemudian dimodulo dengan angka 16. Hasil modulo akan dimasukkan ke posisi depan **hex**. Jika hasil modulo berada pada jangkauan 10 hingga 15, maka yang dimasukkan ke dalam **hex** adalah A-F sesuai dengan hasil modulo.
  - **result** kemudian dibagi secara bulat oleh angka 16 dan hasil pembagian dimasukkan kembali ke dalam **result**.
  - Langkah diatas diulang hingga **result** bernilai 0.
- Program utama mendeklarasi variabel *string* **A, B**, dan **result**. Kemudian, program meminta masukan pengguna berupa heksadesimal yang akan dimasukkan ke dalam variabel **A** dan **B**. Kedua variabel tersebut diubah menjadi desimal dengan fungsi **HexToDec** lalu dijumlahkan, Hasil penjumlahan dikonversi kembali menjadi heksadesimal dengan fungsi **DecToHex** dan dimasukkan ke dalam **result** yang akan ditampilkan ke layar.
<br><br/>
<br><br/>




## Bab 4 - Problem 1
### Deskripsi Soal
Budi mengelola sebuah toko kelontong. Setiap hari ia harus mencatat seluruh barang yang ada di tokonya dan mencatat penjualan dari barang tersebut. Karena ia mudah lupa, ia membutuhkan program untuk mencatat daftar belanja tersebut. Buatlah program untuk mencatat inventaris dan penjualan toko milik budi

**Format Input & Output (input di-*bold*)** <br/> 
Masukkan jumlah barang : **4** <br/>
Masukkan nama barang : **kecap** <br/>
Masukkan nama barang : **mie** <br/>
Masukkan nama barang : **gula** <br/>
Masukkan nama barang : **telur** <br/>
<br/>
1. Jual <br/>
2. Lihat stok <br/>
Pilihan menu : **1** <br/>
Masukkan nama barang : **kecap**<br/>
Barang berhasil dijual <br/>
<br/>
1. Jual <br/>
2. Lihat stok <br/>
Pilihan menu : **2** <br/>
Stok toko : mie, gula, telur <br/>
<br/>
1. Jual <br/>
2. Lihat stok <br/>
Pilihan menu : **1** <br/>
Masukkan nama barang : **minyak** <br/>
Barang tidak ada <br/>
<br/>
1. Jual<br/>
2. Lihat stok<br/>
Pilihan menu : **1**<br/>
Masukkan nama barang : **mie**<br/>
Barang berhasil dijual<br/>
<br/>
1. Jual<br/>
2. Lihat stok<br/>
Pilihan menu : **1**<br/>
Masukkan nama barang : **gula**<br/>
Barang berhasil dijual<br/>
<br/>
1. Jual<br/>
2. Lihat stok<br/>
Pilihan menu : **1**<br/>
Masukkan nama barang : **telur**<br/>
Barang berhasil dijual<br/>
Barang sudah habis, silahkan melakukan restok barang<br/>

# *Source Code* Solusi
```C++
#include <iostream>
#include <string>
using namespace std;

// Isi array dari user input
void isiStok(string *stok, int& size) {
	cin.ignore(256, '\n');
	for(int i = 0; i < size; i++){
		string namaBarang;
		cout << "Masukkan nama barang : "; getline(cin, namaBarang);
		stok[i] = namaBarang;
	}
}

// Tampilkan isi array ke layar dengan format yang ditentukan
void tampilkanStok(string *stok, int& size){
	cout << "Stok toko : ";
	for(int i = 0; i < size; i++){
		
		if(stok[i].compare("") != 0){
			cout << stok[i];

			if(i < size-1){
				cout << ", ";
			}
		}
	}

	cout << endl;
}

// Cari first occurence dari barang yang ada di dalam array
// Return -1 kalau tidak ada, return indeks kalau ada
int cariBarang(string *stok, int& size, string& barang){
	int idx = -1;

	for(int i = 0; i < size; i++){
		if(barang.compare(stok[i]) == 0){
			idx = i;
			break;
		}
	}

	return idx;
}

// Hapus barang dari array dengan cara isi string kosong
void jualBarang(string *stok, int& idx){
	string str = "";
	stok[idx] = str;
}

int main() {

	int size;
	do{
		cout << "Masukkan jumlah barang : "; cin >> size;
	} while (size <= 0);

	int jmlBarang = size; //jmlBarang sebagai penanda sisa barang di array

	// isi array
	string stok[size];
	isiStok(stok, size);
	
	do{
		cout << endl;
		cout << "1. Jual" << endl;
		cout << "2. Lihat stok" << endl;

		int pilihan;
		cout << "Pilihan menu : "; cin >> pilihan;

		if(pilihan == 1){ //hapus barang dari array
			string namaBarang;
			cin.ignore(256, '\n');
			cout << "Masukkan nama barang : "; getline(cin, namaBarang);

			// lokasi barang = indeks barang dalam array
			int lokasiBarang = cariBarang(stok, size, namaBarang);

			if(lokasiBarang == -1){ // barang tidak ditemukan
				cout << "Barang tidak ada" << endl;
			}
			else { // barang ditemukan
				jualBarang(stok, lokasiBarang);
				cout << "Barang berhasil dijual" << endl;
				jmlBarang--;
			}

		}
		else if(pilihan == 2){ //tampilkan barang-barang dalam array
			tampilkanStok(stok, size);
		}

	} while (jmlBarang > 0); // barang dalam array sudah habis

	cout << endl << "Barang sudah habis, silahkan melakukan restok barang" << endl;

	return 0;
}
```
### Pembahasan Solusi
Fungsionalitas program diatas dipisah menjadi fungsi/prosedur. Berikut adalah fungsi dan prosedur yang dibentuk. <br/>
- Prosedur **isiStok** berfungsi untuk mengisi array dengan nama-nama barang yang dimasukkan oleh pengguna
- Prosedur **tampilkanStok** berfungsi untuk menampilkan barang-barang yang ada di dalam array
- Fungsi **cariBarang** berfungsi untuk mencari barang yang dimasukkan oleh penguna di dalam array. Fungsi akan mengembalikan indeks barang dalam array jika barang ditemukan dan mengembalikan -1 jika barang tidak ditemukan.
- Prosedur **jualBarang** berfungsi untuk menghapus barang dari dalam array dengan cara mengisi indeks array yang bersangkutan dengan *string* kosong
- Program utama akan menerima barang-barang dari pengguna dan memasukkannya ke dalam array dengan prosedur **isiStok**. Kemudian, program membentuk variabel bernama **jmlBarang** yang akan menyimpan jumlah barang dalam array. Kemudian, program akan menampilkan menu yang berisi *jual* dan *lihat stok*.
	- Jika pengguna memilih *jual*, program akan meminta nama barang dari pengguna untuk kemudian dihapus dari array dengan prosedur **jualBarang**
	- Jika pengguna memilih *lihat Stok*, program akan menampilkan barang-barang dalam stok dengan fungsi **tampilanStok**
<br><br/>
<br><br/>

## Bab 5 - Problem 12

### Deskripsi Soal

Tuan Krab ingin memperluas pasar untuk Krabi Pati. Kali ini dia berencana membangun Krasti Krab di pegunungan. Untuk Krasti Krab yang baru ini, dia ingin agar bangunannya berbentuk **persegi**. Namun, tanah yang tersedia di pegunungan tidaklah rata. Untuk menghemat anggaran, Tuan Krab hanya akan membangun pada bidang tanah yang rata saja (memiliki ketinggian sama). Kontur tanah di pegunungan direpresentasikan dalam *square matrix* berukuran `N`x`N` dimana nilai setiap elemennya menggambarkan ketinggian tanah di tempat tersebut. Tuan Krab meminta bantuan Anda untuk dapat menentukan luas maksimum dari Krasti Krab yang dapat dibangun.

**Format *Input* dan *Output*** <br/>
*Input* berupa matriks kontur tanah disimpan dalam file eksternal `contour.txt`. Dalam file ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` bilangan bulat yang masing-masing mewakili ketinggian tanah pada posisi tersebut. 
*Output* berupa informasi luas maksimum Krasti Krab yang dapat dibangun pada lokasi tersebut.

**Contoh** <br/>

- contour.txt

```
4
1 1 1 8
1 1 1 6
1 1 1 3
2 2 2 2
```

- *runtime program*
```
file loaded!
Luas maksimum Krasti Krab yang dapat dibangun adalah 9
```

### *Source Code* Solusi
Program dibawah dikompilasi dengan C++11
```C++
#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <algorithm>
#include <vector>
#include <unistd.h>
using namespace std;


// split string dan masukkan token ke dalam vector
template <class Container>
void split(const string& str, Container& cont, char delim = ' '){
	stringstream ss(str);
	string token;
	while(getline(ss, token, delim)){
		cont.push_back(token);
	}
}

// isi matriks dari file eksternal
void fillMatrix(int **mat, int& size, ifstream& file){

	vector<string> heights;
	string reader;

	for (int i = 0; i < size; i++){
		heights.clear();
		getline(file, reader);
		split(reader, heights);

		for (int j = 0; j < size; j++){
			mat[i][j] = stoi(heights[j]);
		}
	}

}

// cek baris matriks untuk mencari panjang sisi persegi
// Jika persegi, return panjangnya. Jika tidak, return 1
// Pengecekkan dilakukan jika elemen yang dicek adalah elemen pojok kiri atas persegi
int checkRow(int **mat, int& row, int& col, int& size){
	int length = 1;
	
	int elem = mat[row][col]; // elemen yang sedang di cek
	int upside = elem, downside = elem, leftside = elem, rightside = elem; // elemen sebelah mata angin elem

	// kasus normal
	if(row > 0 && row < size-1){
		upside = mat[row-1][col];
		downside = mat[row+1][col];
	}
	
	// kasus jika posisi kolom bukan bukan kolom pertama
	if(col > 0){
		leftside = mat[row][col-1];
	}

	// kasus jika posisi kolom bukan bukan kolom pertama
	if(col < size-1){
		rightside = mat[row][col+1];	
	}
	
	// pengecekkan dilakukan jika elemen tidak di baris paling bawah atau tidak di kolom paling kanan
	if(row < size-1 && col < size-1){
		if(row == 0){
			// pengecekkan pada baris pertama
			// pengecekkan terhadap elemen atas (upside) tidak dilakukan
			if(elem == downside && elem == rightside){
				if(col > 0){
					// pengecekkan pada kolom setelah kolom pertama
					// pengecekkan akan dilanjutkan jika elemen disebelah kiri tidak sama dengan elemen yang sedang di-cek
					if(elem != leftside){
						for(int j = col+1; j < size; j++){
							if(mat[row][j] == elem){
								length++;
							}
							else {
								break;
							}
						}	
					}
				}
				else {
					// pengecekkan pada kolom pertama
					// pengecekkan terhadap elemen kiri (leftside) tidak dilakukan
					for(int j = col+1; j < size; j++){
						if(mat[row][j] == elem){
							length++;
						}
						else {
							break;
						}
					}
				}
			}
		}
		else {
			// pengecekkan pada baris setelah baris pertama
			// pengecekkan terhadap elemen atas (upside) dilakukan
			if(elem == downside && elem != upside && elem == rightside){
				if(col > 0){
					// pengecekkan pada kolom setelah kolom pertama
					// pengecekkan akan dilanjutkan jika elemen disebelah kiri tidak sama dengan elemen yang sedang di-cek
					if(elem != leftside){
						for(int j = col+1; j < size; j++){
							if(mat[row][j] == elem){
								length++;
							}
							else {
								break;
							}
						}	
					}
				}
				else {
					// pengecekkan pada kolom pertama
					// pengecekkan terhadap elemen kiri (leftside) tidak dilakukan
					for(int j = col+1; j < size; j++){
						if(mat[row][j] == elem){
							length++;
						}
						else {
							break;
						}
					}
				}
			}	
		}
	}

	return length;
}

// cek jika panjang vertikal sama dengan panjang horizontal (spaceSize)
// return true jika sama, false jika tidak
bool checkColumn(int **mat, int& row, int& col, int& spaceSize){
	bool check = true;
	for(int i = row; i < spaceSize; i++){
		if(mat[i][col] != mat[row][col]){
			check = false;
			break;
		}
	}
	return check;
}

// cari persegi terbesar dalam matriks
int searchMaxSpace(int **mat, int& size){
	int maxSpace = 0, spaceSize;
	for(int i = 0; i < size; i++){
		for(int j = 0; j < size; j++){

			bool isSquare = true;
			
			spaceSize = checkRow(mat, i, j, size);

			// pengecekkan dilakukan jika elemen adalah elemen pojok kiri atas persegi
			if(spaceSize > 1){

				// cek masing-masing kolom persegi
				// jika ada yang panjangnya tidak sama, maka isSquare menjadi false (bukan persegi)
				for(int k = j; k < spaceSize; k++){
					if(checkColumn(mat, i, k, spaceSize) == false){
						isSquare = false;
					}
				}
				// jika persegi dan ukurannya lebih besar dari max, maka melakukan swap
				if(isSquare == true){
					if(maxSpace < spaceSize){
						maxSpace = spaceSize;
					}
				}
			}
		}
	}

	return maxSpace*maxSpace;
}

int main(){

	ifstream infile;
	infile.open("contour.txt");

	if(infile.is_open()){
		cout << "File Loaded!" << endl;

		string sizeReader;
		getline(infile,sizeReader);
		int matSize = stoi(sizeReader);

		//Initialize matrix
		int **matrix = new int *[matSize];
		for(int i = 0; i < matSize; i++){
			matrix[i] = new int[matSize];
		}
		
		//read matrix's content
		fillMatrix(matrix, matSize, infile);

		cout << "Luas maksimum Krasti Krab yang dapat dibangun adalah " << searchMaxSpace(matrix, matSize) << endl;
	}

	infile.close();

	return 0;
}
```

### Pembahasan Solusi
Komponen dari program solusi dibungkus kedalam fungsi dan prosedur untuk mempermudah pembacaan. Berikut adalah fungsi masing--masing fungsi/prosedur. <br/>
- Prosedur **split** berfungsi untuk membagi *string* berdasarkan *string* pembagi (*delimiter*) yang dibaca menjadi kumpulan *string* yang pada program disimpan dalam bentuk vektor.
- Prosedur **fillMatrix** berfungsi untuk mengisi matriks dalam program sesuai dengan file eksternal yang sedang dibaca
- Fungsi **checkRow** berfungsi untuk mengecek dan mengembalikan panjang sisi persegi secara horizontal. Jika hasil pengecekkan bukan persegi, maka pengecekkan akan mengembalikan nilai 1. Pengecekkan dilakukan jika elemen matriks yang dicek merupakan elemen sudut kiri atas dari persegi.
- Fungsi **checkColumn** berfungsi untuk mengecek persegi secara vertikal. Tidak seperti fungsi **checkColumn**, fungsi ini akan mengembalikan boolean. Jika panjang vertikal tidak sesuai dengan panjang secara horizontal yang merupakan masukan fungsi, maka pengecekkan tidak akan menghasilkan persegi dan mengembalikan nilai *false* dan sebaliknya.
- Fungsi **searchMaxSpace** berfungsi untuk mencari persegi yang bisa ditempati tuan Krab untuk Krabi Pati. Jika tidak ditemukan, maka fungsi akan mengembalikan nilai 0. Jika ditemukan, maka fungsi akan mengembalikan luasnya.
- Program utama akan membaca informasi (besar dan isi) matriks dari file eksternal yang bernama `contour.txt` menggunakan prosedur **fillMatrix**. Setelah itu, program akan mencari persegi terbesar yang dapat digunakan tuan Krab dengan fungsi **searchMaxSpace**.
