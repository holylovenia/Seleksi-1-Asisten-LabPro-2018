# Seleksi 1 Asisten LabPro 2018
-----------------------------------

(c) Ihsan Muhammad Asnadi / 135-16-028

---------------------------------
### Chapter 1 Problem 11

Tuan Vin menjadi wasit dalam permainan tic tac toe. Tuan Vin diminta menentukan pemenang dari setiap permainan. Karena malas, Tuan Vin meminta Anda yang jag membuat program untuk membuat program yang dapat menentukan pemenang permainan tic tac toe. Karena Tuan Vin menjadi wasit, dipastikan pada permainan ini paling banyak hanya ada 1 pemenang, dan papan dibiarkan terisi penuh karena Tuan Vin kesulitan menentukan pemenang.


**Format Input & Output (input di-*bold*)**
***
Masukkan isi papan:

**O X O**

**O O X**

**X X O**

Pemain O menang
***
Masukkan isi papan:

**X X X**

**O O X**

**X O O**

Pemain X menang
***
Masukkan isi papan:

**O X O**

**O X X**

**X O O**

Tidak ada yang menang
***
Hint: hanya ada 8 posisi yang menentukan pemenang dalam tic tac toe

---------------------------------
### Solusi Chapter 1 Problem 11

Cukup mengecek 8 posisi untuk menentukan pemenang dalam game tic-tac-toe 

```
// ===============
// (c) Ihsan M. A.
// 	135-16-028
// ===============
#include <bits/stdc++.h>
using namespace std;

// Chapter 1 Problem 11
// Idea:
// 	Brute check 8 kemungkinan:
// 		3 baris
// 		3 kolom
// 		2 diagonal
// Assumption(s):
// 	-

int main() {
	const int ARR_SIZE = 3;
	char arr[ARR_SIZE][ARR_SIZE];
	char x;

	// Input papan
	for (int i = 0; i < ARR_SIZE; i++) {
		for (int j = 0; j < ARR_SIZE; ) {
			// Skip whitespace
			if (cin >> x and x == ' ') continue;
			arr[i][j++] = x;
		}
	}

	char ans;
	bool flag = 0;

	// Cek diagonal
	if (!flag and arr[1][1] == arr[0][0] and arr[1][1] == arr[2][2]) {
		ans = arr[1][1];
		flag = 1;
	}
	if (!flag and arr[1][1] == arr[2][0] and arr[1][1] == arr[0][2]) {
		ans = arr[1][1];
		flag = 1;
	}

	// Cek horizontal
	if (!flag and arr[0][1] == arr[0][0] and arr[0][1] == arr[0][2]) {
		ans = arr[0][1];
		flag = 1;
	}
	if (!flag and arr[1][1] == arr[1][0] and arr[1][1] == arr[1][2]) {
		ans = arr[1][1];
		flag = 1;
	}	
	if (!flag and arr[2][1] == arr[2][0] and arr[2][1] == arr[2][2]) {
		ans = arr[2][1];
		flag = 1;
	}

	// Cek vertikal
	if (!flag and arr[1][0] == arr[0][0] and arr[1][0] == arr[2][0]) {
		ans = arr[1][0];
		flag = 1;
	}	
	if (!flag and arr[1][1] == arr[0][1] and arr[1][1] == arr[2][1]) {
		ans = arr[1][1];
		flag = 1;
	}	
	if (!flag and arr[1][2] == arr[0][2] and arr[1][2] == arr[2][2]) {
		ans = arr[1][2];
		flag = 1;
	}

	flag ? printf("Pemain %c menang\n", ans) : puts("Tidak ada yang menang");

	return 0;
}
```

---------------------------------
### Chapter 2 Problem 10

Seorang mahasiswa ingin menentukan bilangan terendah kedua dan terbesar kedua dari **N** buah bilangan. Diasumsikan **N** selalu lebih besar dari **1**. Buatlah program untuk membantu mahasiswa tersebut.


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukan jumlah bilangan :5  
Bilangan ke-1 :4 
Bilangan ke-2 :78
Bilangan ke-3 :25 
Bilangan ke-4 :20 
Bilangan ke-5 :34
Bilangan terendah kedua adalah 20
Bilangan tertinggi kedua adalah 34
```

---------------------------------
### Solusi Chapter 2 Problem 10

Cukup melakukan linear scan pada array untuk menemukan jawabannya

Setiap nilai max/min berubah, update second max/min

Tetap update second max/min jika ada bilangan yang sesuai walaupun nilai max/min tidak berubah

```
// ===============
// (c) Ihsan M. A.
// 	135-16-028
// ===============
#include <bits/stdc++.h>
using namespace std;

// Chapter 2 Problem 10
// Idea:
// 	Melakukan linear scan untuk menemukan:
// 		Second max
// 		Second min
// Assumption(s):
// 	N adalah integer 64 bit
// 	Bilangan bisa jadi negatif
	

int main() {
	// Input N
	long long int n;
	printf("Masukan jumlah bilangan :"); scanf("%lld", &n);

	// Inisialisasi variabel penampung max, second max, second min, min
	long long int biggerMax, smallerMax, biggerMin, smallerMin;
	biggerMax = smallerMax = LLONG_MIN;
	biggerMin = smallerMin = LLONG_MAX;

	long long int arr[n+1];
	for (int i = 0; i < n; i++) {
		// Input elemen ke dalam array
		printf("Bilangan ke-%d :", i+1); scanf("%lld", arr+i);
		
		// Perhitungan second max dan second min
		smallerMax = min(max(arr[i], smallerMax), biggerMax);
		biggerMax = max(arr[i], biggerMax);
		biggerMin = max(min(arr[i], biggerMin), smallerMin);
		smallerMin = min(arr[i], smallerMin);

		// Block di atas ekivalen dengan:

		// if (arr[i] > biggerMax) {
		// 	smallerMax = biggerMax;
		// 	biggerMax = arr[i];
		// } else if (arr[i] > smallerMax){
		// 	smallerMax = arr[i];
		// }
		// if (arr[i] < smallerMin) {
		// 	biggerMin = smallerMin;
		// 	smallerMin = arr[i];
		// } else if (arr[i] < biggerMin){
		// 	biggerMin = arr[i];
		// }
	}

	// Perhatikan bahwa cara di atas bahkan tidak perlu menggunakan array, dengan time complexity O(n)

	// Terdapat pula alternatif lain yang lebih readable dan easy to maintain:
	// 	Sorting array
	// 	Second min adalah elemen di indeks 1
	// 	Second max adalah elemen di indeks (n-1)-1 (zero-based indexing)

	// sort(arr, arr+n);
	// biggerMin = arr[1];
	// smallerMax = arr[n-2];

	// Hanya saja time complexity-nya lebih besar yaitu O(n log n) walaupun untuk N = 9e18 log n hanya bernilai ~64, tidak buruk untuk diperhitungkan sebagai alternatif solusi dengan kelebihan lebih mudah dibaca dan dimaintain

	printf("Bilangan terendah kedua adalah %lld\n", biggerMin);
	printf("Bilangan tertinggi kedua adalah %lld\n", smallerMax);

	return 0;
}
```

---------------------------------
### Chapter 3 Problem 9

Diberikan 2 bilangan bulat A dan B (1 ≤ A, B ≤ 100000000), buatlah program yang menampilkan semua palindrom antara A dan B inklusif.


**Format Input & Output (input di-*bold*)**
***
Masukkan nilai range bilangan A dan B : **10 100**

Palindrome antara 10 dan 100 adalah:

11

22

33

44

55

66

77

88

99
***
Masukkan nilai range bilangan A dan B : **12 21**

Palindrome antara 10 dan 100 adalah:

TIDAK ADA
***


**Catatan:** 
Buatlah suatu fungsi yang memeriksa apakah suatu bilangan adalah bilangan palindrome atau bukan.

---------------------------------
### Solusi Chapter 3 Problem 9

Melakukan iterasi inklusif dari A ke B dan mengecek apakah bilangan sebuah palindrom dengan fungsi

Pengecekan dilakukan dengan melakukan reverse pada bilangan lalu dicek kesamaannya dengan bilangan semula

```
// ===============
// (c) Ihsan M. A.
// 	135-16-028
// ===============
#include <bits/stdc++.h>
using namespace std;

// Chapter 3 Problem 9
// Idea:
// 	Iterasi [A, B] dan cek setiap bilangan
// Assumption(s):
// 	-

// Palindrome checker
bool isPalindrome(int x) {
	int t = 0, tx = x;
	while (x) {
		t *= 10;
		t += x%10;
		x /= 10;
	}
	return t == tx;
}

int main() {
	// Input A dan B
	int a, b;
	printf("Masukkan nilai range bilangan A dan B : "); scanf("%d %d", &a, &b);

	puts("");
	printf("Palindrome antara %d dan %d adalah:\n", a, b);
	
	// Brute check pada interval [A, B]
	int flag = 0;
	for (int i = a; i <= b; i++) {
		if (isPalindrome(i)) {
			puts("");
			cout << i << endl;
			if (!flag) flag = 1;
		}
	}

	printf(flag ? "" : "\nTIDAK ADA\n");

	return 0;
}
```

---------------------------------
### Chapter 4 Problem 8

Terdapat sebuah array. Tentukan tiga angka a, b, dan c pada array tersebut yang memenuhi nilai a+b^2 = c dengan a != b != c

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah elemen array : **5**

Masukkan isi array : **0 1 2 4 5 7**

nilai a b c yang memenuhi adalah :

[0,2,4]

[1,2,5]

[4,1,5]

***
***
Masukkan jumlah elemen array : **3**

Masukkan isi array : **0 1 2**

tidak ada nilai a b c yang memenuhi
***

---------------------------------
### Solusi Chapter 4 Problem 8

Cukup melakukan pengecekan keberadaan nilai C untuk setiap pasangan (A,B) yang merupakan elemen array

```
// ===============
// (c) Ihsan M. A.
// 	135-16-028
// ===============
#include <bits/stdc++.h>
using namespace std;

// Chapter 4 Problem 8
// Idea:
// 	Mencari nilai C dengan binary search untuk mempercepat pencarian
// Assumption(s):
// 	Elemen terurut menaik
// 	Elemen unik

long long int binarySearchC(long long int arr[], long long int left, long long int right, long long int k) {
	// Angka yang dicari tidak ketemu bila:
	// 	left > right ==> elemen memang tidak ada pada array
	// 	k > elemen paling kanan
	// 	k < elemen paling kiri
	if (left > right or k > arr[right] or k < arr[left]) {
		return -1;
	} else {
		long long int mid = (left+right)/2;

		// Membandingkan k dengan elemen yang berada di tengah array
		if (k == arr[mid]) {
			return k;
		} else if (k > arr[mid]) {
			return binarySearchC(arr, mid+1, right, k);
		} else if (k < arr[mid]) {
			return binarySearchC(arr, left, mid-1, k);
		}
	}
}

int main() {
	// Input nilai N
	long long int n;
	printf("Masukkan jumlah elemen array : "); scanf("%lld", &n);

	// Input elemen array
	long long int arr[n+1];
	puts("");
	printf("Masukkan isi array : ");
	for (long long int i = 0; i < n; i++) {
		scanf("%lld", arr+i);
	}

	// Array of tuple untuk menampung A, B, dan C
	tuple<long long int, long long int, long long int> ans[n+1];
	long long int iter = 0;
	bool flag = 0;

	// Brute assign A dan B dengan tiap elemen pada array 
	for (long long int i = 0, a, b, c; i < n; i++) {
		for (long long int j = 0; j < n; j++) {
			a = arr[i];
			b = arr[j];
			// Menggunakan binary search untuk mencari nilai C
			c = a == b ? -1 : binarySearchC(arr, 0, n-1, a+b*b);
			if (c != -1 and a != c and b != c) {
				if (!flag) flag = 1;
				ans[iter++] = make_tuple(a, b, c);
			}
		}
	}

	puts("");
		
	// ans[n+1] is not empty
	if (flag) {
		puts("Nilai a b c yang memenuhi adalah :");
		tuple<long long int, long long int, long long int> x;
		for (long long int i = 0; i < iter; i++) {
			x = ans[i];
			puts("");
			printf("[%lld,%lld,%lld]\n", get<0>(x), get<1>(x), get<2>(x));
		}
	} else {
		puts("Tidak ada nilai a b c yang memenuhi");
	}

	return 0;
}
```

---------------------------------
### Chapter 5 Problem 7

Spons akan membuat selai dari saus *jellyfish*. Menurut resep rahasia yang dia terima dari Tuan Krab, selai dengan rasa terbaik dihasilkan dari perpaduan dua ekor *jellyfish* dari jenis Spongian dan Patrician, dengan bobot total kedua ekor *jellyfish* tersebut adalah `X`. Spons pun pergi ke pasar untuk membeli *jellyfish* yang diperlukan. Di pasar, pedagang telah menyiapkan daftar bobot *jellyfish* yang tersedia dari masing-masing jenis (elemen masing-masing daftar *unique*). Pedagang ini merupakan orang yang sangat sistematis, sehingga daftar tersebut disimpan dalam bentuk matriks persegi yang masing-masing elemennya terurut membesar. Spons perlu untuk mengetahui berapa banyak pasangan bobot *jellyfish* jenis Spongian dan Patrician yang dapat dia gunakan untuk menghasilkan selai terbaik. Tugas Anda adalah untuk membantu Spons menghitung banyaknya pasangan bobot yang dapat ia gunakan tersebut.

**Definisi**
Misalkan matriks `A` merupakan matriks dengan elemen terurut membesar yang berukuran `N`x`N`. Hal ini berarti untuk setiap bilangan bulat non-negatif `i`, `j` yang bernilai kurang dari `N`, maka berlaku `A[i][j]` < `A[i][j+1]` dan `A[i][N-1]` < `A[i+1][0]`.

**Format *Input* dan *Output***
*Input* matriks bobot ukuran diambil dari file eksternal `spongian.txt` dan `patrician.txt`. Pada file-file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. Perlu diperhatikan bahwa nilai `N` ini sama di kedua file. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks tersebut. Pada saat *runtime*, pengguna akan memasukkan bilangan bulat positif `X` yang merupakan target jumlah bobot yang dicari oleh Spons.
 *Output* berupa banyaknya pasangan bobot dari kedua jenis *jellyfish* yang berjumlah `X`.

**Contoh**

- spongian.txt

```
3
1 5 6
8 10 11
15 16 18
```

- patrician.txt

```
3
2 4 7
9 10 12
13 16 20
```

- *runtime program*

```
matriks loaded!
Masukkan target bobot: 21
Banyak pasangan adalah 4
```

Keterangan: pasangan yang memenuhi adalah (1, 20), (5, 16), (8, 13) dan (11, 10).

---------------------------------
### Solusi Chapter 5 Problem 7

Menggunakan double pointer untuk mengecek pasangan elemen pada matriks yang nilainya sesuai target

```
// ===============
// (c) Ihsan M. A.
// 	135-16-028
// ===============
#include <bits/stdc++.h>
using namespace std;

// Chapter 5 Problem 7
// Idea:
// 	Karena terurut membesar, maka dapat dipastikan bahwa jika elemen spongian pada index [i1, j1] memiliki pasangan pada elemen patrician di index [k1, l1], maka elemen spongian pada [i2, j2] hanya mungkin memiliki pasangan pada patrician dengan index [k2, l2], dengan constraint ((N*i1)+j1) < ((N*i2)+j2) dan ((N*k2)+l2) < ((N*k1)+l1)
// 	Maka akan digunakan metode double pointer, yaitu menunjuk matrix 1 dari elemen terkecil, dan matrix 2 dari elemen terbesar
// Assumption(s):
// 	Elemen adalah integer 64 bit

int main() {
	long long int n;
	FILE *f;

	// Mengisi matrix spongian
	f = fopen("spongian.txt", "r");
	fscanf(f, "%lld", &n);
	long long int spongian[n+1][n+1];
	for (long long int i = 0; i < n; i++) {
		for (long long int j = 0; j < n; j++) {
			fscanf(f, "%lld", &spongian[i][j]);
		}
	}
	fclose(f);
	
	// Mengisi matrix patrician
	f = fopen("patrician.txt", "r");
	fscanf(f, "%lld", &n);
	long long int patrician[n+1][n+1];
	for (long long int i = 0; i < n; i++) {
		for (long long int j = 0; j < n; j++) {
			fscanf(f, "%lld", &patrician[i][j]);
		}
	}
	fclose(f);

	puts("Matriks loaded!");

	// Input target bobot
	long long int target;
	printf("Masukkan target bobot: "); scanf("%lld", &target);

	long long int ans = 0;
	// Menggunakan metode double pointer untuk mengecek elemen matriks spongian dan patrician
	for (long long int iter1 = 0, iter2 = n*n-1, i, j, k, l, sp, pt, t; iter1 < n*n and iter2 >= 0; ) {
		i = iter1/n;
		j = iter1%n;
		k = iter2/n;
		l = iter2%n;
		// Address calculation untuk mengubah nilai 1 pointer menjadi indeks matrix 2D
		sp = *((long long int*)(((long long int*)(spongian+i))+j)); // Dereferencing pointer
		pt = *((long long int*)(((long long int*)(patrician+k))+l)); // Dereferencing pointer
		t = sp+pt;

		// Jika nilainya sesuai dengan target:
		// 	Increment pointer 1 dan decrement pointer 2 
		// Jika nilainya lebih besar, decrement pointer 2 agar t mengecil
		// Jika nilainya lebih kecil, increment pointer 1 agar t membesar
		if (t == target) {
			ans++;
			iter1++;
			iter2--;
		} else if (t > target) iter2--;
		else iter1++;
 	}

 	printf("Banyak pasangan adalah %lld\n", ans);

	return 0;
}
```

