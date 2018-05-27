Hani'ah Wafa (13516053)

Bab 1 Problem 9
----------------
DESKRIPSI SOAL

Tuan Vin ingin mengetahui suhu udara sekarang. Terdapat termometer pada dinding di dekatnya. Namun terkadang, satuan suhu yang tertulis tidak sesuai dengan yang ingin diketahuinya. Dari 3 jenis suhu R, C dan F, berikut adalah perbandingannya:


C : R : (F-32) = 5 : 4 : 9


Tuan Vin meminta bantuan Anda untuk dapat membaca suhu dengan lebih mudah


**Format Input & Output (input di-*bold*)**
***
Masukan satuan suhu termometer: **C**

Masukan besar suhu: **40**

Masukan satuan yang ingin diketahui: **R**

Besar suhu dalam R: 32
***

SOURCE CODE

	#include <iostream>
	using namespace std;
	
	//menghasilkan nilai ratio satuan suhu terhadap kedua satuan lainnya
	int ratio(char satuan)
	{
		if(satuan=='C') return 5;
		else if(satuan=='R') return 4;
		else return 9;
	}
	//menghasilkan nilai konversi suhu dari satuan_awal ke satuan_akhir
	double konversi(double suhu_awal, char satuan_awal, char satuan_akhir)
	{
		int ratio_awal,ratio_akhir;
		ratio_awal=ratio(satuan_awal);
		ratio_akhir=ratio(satuan_akhir);
		if(ratio_awal==9) suhu_awal-=32;
		if(ratio_akhir==9) return (suhu_awal/ratio_awal*ratio_akhir+32);
		else return (suhu_awal/ratio_awal*ratio_akhir);
	}
	
	int main()
	{
		char satuan_awal,satuan_akhir;
		double suhu_awal;
		cout<<"Masukan satuan suhu termometer: ";
		cin>>satuan_awal;
		cout<<"Masukan besar suhu: ";
		cin>>suhu_awal;
		cout<<"Masukan satuan yang ingin diketahui: ";
		cin>>satuan_akhir;
		cout<<"Besar suhu dalam "<<satuan_akhir<<": "<<konversi(suhu_awal,satuan_awal,satuan_akhir);
	}

PENJELASAN SOLUSI

Pada main program kita akan membaca masukkan berupa satuan suhu awal, nilai suhu awal dan satuan suhu akhir yang diinginkan. Untuk mendapatkan nilai konversi suhu dari satuan awal ke satuan akhir maka akan dilakukan pemanggilan fungsi konversi.
Fungsi konversi adalah fungsi yang menerima tiga parameter yaitu, suhu awal, satuan awal dan satuan akhir dan akan mengembalikan nilai bertipe double yang merupakan konversi suhu dari satuan suhu awal ke satuan suhu akhir. Dalam eksekusinya, fungsi ini kemudian akan memanggil fungsi ratio. Fungsi ratio tersebut adalh fungsi yang menerima parameter input bertipe char yang merupakan satuan suhu dan akan mengembalikan nilai ratio satuan suhu tersebut terhadap dua satuan suhu lainnya. Selajutnya, nilai konversi suhu akan didapatkan dengan menghitung suhu_awal/ratio_awal*ratio_akhir. Namun, jika salah satu satuan suhu tersebut adalah Fahrenheit (memiliki nilai ratio 9) maka akan dilakukan penanganan khusus. Untuk konversi dengan satuan awal adalah Fahrenheit, maka nilai suhu_awal perlu dikurangi sebesar 32 terlebih dahulu dan untuk konversi dengan satuan akhir adalah Fahrenheit maka nilai konversi kemudian perlu ditambah sebesar 32.


Bab 2 Problem 8
---------------
DESKRIPSI SOAL

Agar dapat lulus dari kuliah, seorang mahasiswa dituntut untuk dapat menyebutkan bilangan prima diantara **A** dan **B**. Bantulah mahasiswa tersebut untuk menyebutkan bilangan prima tersebut.


**Catatan :** 
Buatlah suatu fungsi yang mengecek apakah suatu bilangan merupakan bilangan prima atau bukan


**Format Input & Output**
*(Elemen baris setelah tanda “:” pada runtime merupakan input dari pengguna)*
```
Masukkan nilai A :1 
Masukkan nilai B :10
Bilangan prima diantara 1 sampai 10 adalah
2  
3  
5  
7  
```
```
Masukkan nilai A :10
Masukkan nilai B :20
Bilangan prima diantara 10 sampai 20 adalah 
11  
13  
17  
19
```

SOURCE CODE

#include <bits/stdc++.h>

using namespace std;
//mencetak sema bilangan prima diantara a dan b
void primebetween(int a, int b)
{
	bool memo[b+1];
	memo[2]=1;
	for(int i=3; i<=b; i++)
	{
		memo[i]=0;
		int j=2;
		bool prima=true;
		while(prima && (j<=sqrt(i)))
		{
			if(i%j==0)
				prima=false;
			else j++;
		}
		if(prima) memo[i]=1;
	}
	for(int i=a; i<=b; i++)
		if(memo[i]==1 && i>1) cout<<i<<"\n";
}

int main()
{
	int a,b;
	cout<<"Masukan nilai A :";
	cin>>a;
	cout<<"Masukan nilai B :";
	cin>>b;
	cout<<"Bilangan prima diantara "<<a<<" sampai "<<b<<" adalah\n";
	primebetween(a,b);
	return 0;
}

PENJELASAN SOLUSI

Setelah mendapatkan nilai a dan b dari input user, kemudian kita akan memanggil prosedur primebetween(a,b) untuk dapat mencetak semua bilangan prima diantara nilai a dan nilai b.
Prosedur primebetween adalah prosedur yang akan menerima dua parameter input misalnya a dan b kemudian mencetak semua bilangan prima yang berada diantara nilai a dan nilai b. Prosedur ini memiliki sebuah array memo bertipe boolean. Nilai memo[i] akan bernilai true jika i merupakan bilangan prima dan akan bernilai false jika i merupakan bilangan bukan prima. Pada awalnya nilai pada array memo tersebut diinisialisasi dengan nilai false kecuali memo [2] yang diset dengan nilai true karena angka dua merupakan bilangan prima pertama. Kemudian untuk setiap bilangan dari 3 hingga b, kita akan melakukan pengecekan apakah bilangan tersebut merupakan bilangan prima atau bukan. Untuk mengetahui apakah sebuah bilangan x merupakan bilang prima atau bukan, misal A adalah himpunan semua bilangan prima yang lebih kecil atau sama dengan akar kuadrat dari x. Jika terdapat y anggota A dimana y habis membagi x, maka x bukanlah bilangan prima. Sebaliknya, jika tidak terdapat y anggota A dimana y habis membagi x, maka x adalah bilangan prima dan memo[x] diset dengan nilai true. Setelah melakukan pengecekan, untuk tiap nilai i dimana i≥a dan i≤b, jika memo[i]=true maka print i.

Bab 3 Problem 7
---------------
DESKRIPSI SOAL

Segitiga Pascal adalah segitiga yang dibuat dimulai dari angka 1 dan tiap angka di baris kedua dan selanjutnya berasal dari jumlah dua angka di atasnya. Berikut contoh 5 baris pertama Segitiga Pascal:

1

1 1

1 2 1

1 3 3 1

1 4 6 4 1



Segitiga Pascal juga dapat dibentuk dari kombinatorik, dengan bilangan pada baris ke-i dan kolom ke-j bernilai C(i-1,j-1). Berikut adalah contoh penerapan pada 5 baris Segitiga Pascal.

C(0,0)

C(1,0) C(1,1)

C(2,0) C(2,1) C(2,2)

C(3,0) C(3,1) C(3,2) C(3,3)

C(4,0) C(4,1) C(4,3) C(4,4) C(4,5)


Buatlah sebuah program yang membuat Segitiga Pascal! (Buat fungsi Kombinasi(n, r) untuk
memudahkan penghitungan)


**Format Input & Output (input di-*bold*)**
***
Masukan jumlah baris: **5**

1

1 1

1 2 1

1 3 3 1

1 4 6 4 1
***

SOURCE CODE

#include <bits/stdc++.h>

using namespace std;
//menghasilkan nilai C(n,r)
long kombinatorik(int n, int r)
{
	long result=1;
	if(r==0 || n==r) {}
	else if(r>=n/2)
	{
		for(int i=r+1; i<=n; i++)
		{
			result*=i;
			result/=i-r;
		}
	}
	else
	{
		for(int i=n-r+1; i<=n; i++)
		{
			result*=i;
			result/=i-n+r;
		}
	}
	return result;
}

int main()
{
	int n;
	cout<<"Masukan jumlah baris: ";
	cin>>n;
	for(int i=0; i<n; i++)
	{
		for(int j=0; j<=i; j++)
		{
			if(j==0) cout<<kombinatorik(i, j);
			else cout<<" "<<kombinatorik(i, j);
		}
		cout<<"\n";
	}
	return 0;
}

PENJELASAN SOLUSI

Untuk dapat membentuk segitiga pascal yang terdiri dari x baris, maka kita perlu menghitung kombinasi C(n,r) dimana n bernilai dari 0 hingga x-1 dan untuk setiap nilai n, r akan bernilai dari 0 hingga n. Fungsi kombinatrik akan menerima dua parameter input yaitu n dan r kemudian mengembalikan nilai dari C(n,r). Seperti yang kita ketahui, nilai C(n,r) didapatkan dengan menghitung n!/r!*(n-r)! . Kita bisa saja menghitung tiap nilai faktorial yang dibutuhkan tersebut baru membaginya satu sama lain, tapi hal ini akan membutuhkan banyak memori dan butuh tipe data yang dapat menampung angka yang sangat besar. Sehingga untuk mengurangi banyak perhitungan yang dilakukan dan banyak memori yang dibutuhkan, kita dapat membagi n! dengan salah satu yang terbesar antara r! maupun n-r! . Misal nilai r lebih besar dari n-r, maka dalam perhitungannya kita hanya perlu melakukan perkalian dari r+1 hingga n dan membaginya dengan hasil perkalian dari 1 hingga n-r. Namun, lagi-lagi untuk mengatasi keterbatasan dari nilai yang dapat ditampung oleh suatu tipe data, maka kita mengakalinya dengan memiliki suatu variabel bernama result yang dinisialisasi dengan 1 dan akan menyimpan hasil perhitungan nilai C(n,r). Kemudian pada tiap iterasi, result akan dikalikan dengan suatu bilangan [r+1..n] dan langsung dibagi dengan suatu bilangan [1..n-r].

Bab 4 Problem 6
---------------
DESKRIPSI SOAL

Adolf suka membandingkan kekayaan negaranya dan negara lain. Ia ingin mengetahui apa yang tidak dimiliki oleh negaranya di negara tetangga. Buatlah program untuk menentukan mana saja kekayaan negara tetangga yang tidak dimiliki oleh negara Adolf.

**Format Input & Output (input di-*bold*)**
***
Masukkan jumlah kekayaan negara Adolf : **5**

Masukkan kekayaan negara Adolf :

**Emas**

**Perak**

**Berlian**

**Tank**

**Nuklir**

Masukkan jumlah kekayaan negara tetangga : **7**

Masukkan kekayaan negara tetangga :

**Emas**

**Perak**

**Tank**

**Nuklir**

**Berlian**

**Gedung**

**Ternak**

Negara adolf tidak memiliki :

Gedung

Ternak
***
***
Masukkan jumlah kekayaan negara Adolf : **5**

Masukkan kekayaan negara Adolf :

**Emas**

**Perak**

**Berlian**

**Tank**

**Nuklir**

Masukkan jumlah kekayaan negara tetangga : **3**

Masukkan kekayaan negara tetangga :

**Emas**

**Perak**

**Tank**

Negara adolf memiliki segalanya
***

SOURCE CODE

#include <bits/stdc++.h>

using namespace std;
//menghasilkan true jika kekayaan bukan merupakan elemen pada array kekayaan_adolf
bool isnotexist(string kekayaan, string kekayaan_adolf[], int n)
{
	bool notexist=true;
	int i=0;
	while(notexist && i<n)
	{
		if(kekayaan_adolf[i]==kekayaan)
			notexist=false;
		else i++;
	}
	return notexist;
}

int main()
{
	int n,m;
	bool prov=false;
	string kekayaan_adolf[100],kekayaan_tetangga[100];
	cout<<"Masukkan jumlah kekayaan negara Adolf : ";
	cin>>n;
	cout<<"Masukkan kekayaan negara Adolf :\n";
	for(int i=0; i<n; i++)
		cin>>kekayaan_adolf[i];
	cout<<"Masukkan jumlah kekayaan negara tetangga : ";
	cin>>m;
	cout<<"Masukkan kekayaan negara tetangga :\n";
	for(int i=0; i<m; i++)
		cin>>kekayaan_tetangga[i];
	for(int i=0; i<m; i++)
	{
		bool temp=isnotexist(kekayaan_tetangga[i],kekayaan_adolf,n);
		if(temp && !prov)
		{
			prov=true;
			cout<<"Negara adolf tidak memiliki :\n"<<kekayaan_tetangga[i]<<"\n";
		}
		else if(temp)
			cout<<kekayaan_tetangga[i]<<"\n";
	}
	if(!prov) cout<<"Negara adolf memiliki segalanya\n";
	return 0;
}

PENJELASAN SOLUSI

Setelah membaca n kekayaan negara Adolf dan m kekayaan negara tetangga dari input user dan menyimpannya pada suatu array yang dinamakan kekayaan_adolf juga kekayaan_tetangga. Kemudian untuk tiap nilai i dimana i≥0 dan i<m akan dicek apakah kekayaan_tetangga[i] juga merupakan elemen pada array kekayaan_adolf. Pengecekan ini dilakukan dengan memanggil fungsi isnotexist. Fungsi ini akan mengembalikan true, jika suatu elemen pada array kekayaan_tetangga tidak terdapat di array kekayaan_adolf. Sebaliknya, fungsi ini akan mengembalikan nilai false jika suatu elemen pada array kekayaan_tetangga juga merupakan elemen pada array kekayaan_adolf. Pencarian pada fungsi ini dilakukan dengan menggunakan skema pencarian dengan boolean. Dimana pencarian akan tetap dilakukan selama masih ada elemen array yang belum dicek dan boolean notexist masih bernilai true. Namun jika salah satu kondisi tersebut tidak terpenuhi maka pencarian akan dihentikan. Sehingga pencarian tidak akan selalu berakhir saat semua elemen array sudah dicek, tapi juga dapat berakhir di tengah-tengah. Pada program utama juga terdapat variabel prov bertipe boolean yang diinisialisasi dengan nilai false. Variabel prov ini nantinya akan diubah menjadi true jika ada suatu kekayaan negara tetangga yang tidak dimiliki negara Adolf. Sebaliknya, variabel prov akan tetap bernilai false, jika tidak ada kekayaan negara tetangga yang tidak dimiliki negara Adolf. Jika pada pengeksekusian program nilai prov berubah menjadi true, maka program akan mencetak kekayaan yang tidak dimiliki negara Adolf tersebut. Namun jika nilai prov tetap false, maka program akan mencetak “Negara adolf memiliki segalanya”.

Bab 5 Problem 5
---------------
DESKRIPSI SOAL

Tuan Krab mempunyai diberikan teka-teki oleh Plankton. Dia diberikan suatu matriks, kemudian dia diminta untuk menentukan apakah matriks tersebut merupakan *magic square* atau bukan. 
*Magic square* merupakan suatu matriks persegi berukuran `N`x`N` dengan elemen yang berbeda-beda. Masing-masing elemen berada pada rentang dari 1 hingga `N`^2. Matriks tersebut dikatakan merupakan *magic square* jika penjumlahan elemen-elemen pada setiap kolom, baris, dan diagonal memiliki nilai yang sama.
Karena cukup kesulitan, Tuan Krab meminta bantuan Anda untuk menyelesaikan permasalahan tersebut.
**Format *Input* dan *Output***
*Input* matriks diambil dari file eksternal `matriks.txt`. Pada file eksternal ini, baris pertama berisi bilangan bulat positif `N` yang merepresentasikan ukuran matriks. `N` baris berikutnya berisi `N` buah bilangan bulat yang merupakan elemen matriks tersebut. Jika matriks merupakan *magic square*, maka dituliskan **Yes** pada layar. Sebaliknya, jika bukan *magic square*, maka dituliskan **No**. 
- matriks.txt

```
3
2   7   6
9   5   1
4   3   8
```

- *runtime program*

```
matriks loaded!
Yes
```

SOURCE CODE

#include <bits/stdc++.h>

using namespace std;

int main()
{
	ifstream readfile;
	int n,comp=0,sum,d1=0,d2=0;
	bool magic=true;
	readfile.open("matriks.txt");
	if(readfile.is_open())
	{
		readfile>>n;
		vector <vector <long long> > matrix(n, vector<long long>(n));
		//pembacaan elemen matriks dan pengecekan kesamaan jumlah elemen per baris
		for(int i=0; i<n; i++)
		{
			sum=0;
			for(int j=0; j<n; j++)
			{
				readfile>>matrix[i][j];
				if(i==0) comp+=matrix[i][j];
				else sum+=matrix[i][j];
			}
			if(i!=0 && sum!=comp) magic=false;
		}
		//pengecekan kesamaan jumlah elemen pada kedua diagonal utama
		if(magic)
		{
			for(int i=0; i<n; i++)
			{
				d1+=matrix[i][i];
				d2+=matrix[i][n-1-i];
			}
			if(comp!=d1 || comp!=d2)
				magic=false;
		}
		//pengecekan kesamaan jumlah elemen per kolom
		int i=0;
		while(magic && i<n)
		{
			sum=0;
			for(int j=0; j<n; j++)
			{
				sum+=matrix[j][i];
			}
			if(comp!=sum)
				magic=false;
			else i++;
		}
		cout<<"matriks loaded!\n";
		if(magic) cout<<"Yes\n";
		else cout<<"No\n";
		readfile.close();
	}
	return 0;
}

PENJELASAN SOLUSI

Pada program utama kita memiliki variabel magic bertipe boolean yang bernilai true. Jika file bernama “matriks.txt” telah ditemukan dan dibuka, maka kita akan melakukan pembacaan dari file eksternal dan mendapatkan ukuran matriks, kemudian kita akan membaca elemen matriks tersebut, sambil sekalian menghitung dan mengecek jumlah elemennya per baris. Jumlah elemen di baris pertama akan kita jadikan sebagai nilai perbandingan untuk nilai-nilai hasil penjumlahan lainnya. Sehingga jumlah elemen di baris kedua hingga ke n akan dibandingkan dengan nilai di baris pertama. Jika nilainya tidak sama maka nilai boolean magic akan diubah menjadi false. Jika setelah itu nilai magic masih true maka akan dilanjutkan dengan mengecek kesamaan jumlah elemen pada kedua diagonalnya. Kemudian jika variabel magic masih bernilai true setelah melakukan pengecekan pada kedua diagonal utama, dilanjutkan dengan mengecek kesamaan jumlah elemen pada tiap kolom. Namun jika nilai magic ternyata sudah bernilai false saat akan melakukan pengecekan selanjutnya, maka pengecekan tidak dilanjutkan. Pada akhir program, jika magic bernilai true, maka program akan mencetak “Yes” dan sebaliknya akan mencetak “No” jika magic bernilai false.
