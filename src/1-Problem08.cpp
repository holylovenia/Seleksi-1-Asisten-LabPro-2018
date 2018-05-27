// 13516017 - Muhammad Nurraihan Naufal
// 26 Mei 2018
// Bab 1 - Problem 8

#include <iostream>
using namespace std;

int main() {
	// KAMUS
	string makanan1, makanan2; // untuk menyimpan input dari pengguna
	bool A, B, C, D, E = false; // merepresentasikan mineral, bernilai true jika terkandung di salah satu jenis makanan
	// ALGORITMA
	cout << "Masukan makanan 1: ";
	cin >> makanan1;
	cout << "Masukan makanan 2: ";
	cin >> makanan2;
	// Mengubah nilai mineral menjadi true jika terkandung pada jenis makanan yg diinput pengguna
	if ((makanan1 == "ikan")||(makanan2 == "ikan")) {
		A = true;
		C = true;
	} 
	if ((makanan1 == "daging")||(makanan2 == "daging")) {
		B = true;
		C = true;
		D = true;
	}
	if ((makanan1 == "sayur")||(makanan2 == "sayur")) {
		D = true;
		E = true;
	}
	if ((makanan1 == "buah")||(makanan2 == "buah")) {
		B = true;
	}
	// Output
	cout << "Mineral ";
	if (!A) {
		cout << "A ";
	}
	if (!B) {
		cout << "B ";
	}
	if (!C) {
		cout << "C ";
	}
	if (!D) {
		cout << "D ";
	}
	if (!E) {
		cout << "E ";
	}
	cout << "tidak didapatkan Tuan Vin" << endl;

	return 0;
}