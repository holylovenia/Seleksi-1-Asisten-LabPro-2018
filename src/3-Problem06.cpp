// 13516017 - Muhammad Nurraihan Naufal
// 26 Mei 2018
// Bab 3 - Problem 6

#include <iostream>
using namespace std;

// fungsi untuk menghitung jarak kuadrat antara titik (x1,y1) dan titik (x2,y2) 
int hitungJarakKuadrat(int x1, int y1, int x2, int y2) {
	int x = x2 - x1;
	int y = y2 - y1;
	return (x * x) + (y * y);	
}

int main() {
	// KAMUS
	int x1, y1; // Posisi mahasiswa
	int x2, y2; // Posisi penjual
	int N; // Banyak penjual
	int i; // indeks penjual
	int iMin; // indeks penjual dengan jarak minimum
	int jarak; // jarak penjual dengan mahasiswa
	int jarakMin = 999; // jarak minimum penjual dengan mahasiswa, diinisialisasi dengan nilai mendekati tak hingga
	// ALGORITMA
	// Menerima input posisi mahasiswa
	cout << "Masukan posisi mahasiswa" << endl;
	cout << "X : ";
	cin >> x1;
	cout << "Y : ";
	cin >> y1;
	// Menerima input banyak penjual
	cout << "Masukan banyak penjual: ";
	cin >> N;
	// Menerima input posisi penjual sebanyak N sekaligus mencari jarak minimum
	for (i = 1; i <= N; i++) {
		cout << "Masukan posisi penjual " << i << endl;
		cout << "X : ";
		cin >> x2;
		cout << "Y : ";
		cin >> y2;
		// Menghitung jarak mahasiswa dgn penjual
		jarak = hitungJarakKuadrat(x1, y1, x2, y2);
		if (jarak < jarakMin) {
			jarakMin = jarak;
			iMin = i;
		}
	}
	// iMin akan menyimpan indeks penjual dengan jarak minimum tersebut
	cout << "Penjual terdekat adalah penjual " << iMin << "." << endl;
	return 0;
}