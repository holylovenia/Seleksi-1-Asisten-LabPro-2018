// 13516017 - Muhammad Nurraihan Naufal
// 26 Mei 2018
// Bab 2 - Problem 7

#include <iostream>
using namespace std;

int main() {
	// KAMUS
	int N;
	int i, j;
	// ALGORITMA
	// Menerima input pengguna
	cout << "Masukkan N :";
	cin >> N;
	// Garis vertikal bagian atas 
	for (i = 0; i < N; i++) {
		for (j = 0; j < N; j++) {
			cout << " ";
		}
		cout << "|" << endl;
	}
	// Garis horizontal tengah bagian kiri
	for (i = 0; i < N; i++) {
		cout << "-";
	}
	// Tanda "+" di tengah garis horizontal
	cout << "+";
	// Garis horizontal tengah bagian kanan
	for (i = 0; i < N; i++) {
		cout << "-";
	}
	// Garis vertikal bagian bawah
	cout << endl;
	for (i = 0; i < N; i++) {
		for (j = 0; j < N; j++) {
			cout << " ";
		}
		cout << "|" << endl;
	}
	return 0;
}