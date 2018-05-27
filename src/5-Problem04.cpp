// 13516017 - Muhammad Nurraihan Naufal
// 26 Mei 2018
// Bab 5 - Problem 4

#include <iostream>
#include <fstream>
using namespace std;

int main() {
	// KAMUS
	ifstream fin;
	ofstream fout;
	int A[100][100]; // Matriks untuk proses perpangkatan
	int B[100][100]; // Matriks konstan menyimpan nilai awal matriks
	int Hasil[100][100]; // Matriks untuk proses perkalian
	int M; // Pangkat
	int N; // Banyak baris/kolom matriks
	int i, j, k, l;
	// ALGORITMA
	// Membaca file dan menyimpannya ke matriks A dan B
	fin.open("matriks.txt");
	fin >> N;
	for (i = 0; i < N; i++) {
		for (j = 0; j < N; j++) {
			fin >> A[i][j];
			B[i][j] = A[i][j];
		}
	}
	fin.close();
	cout << "file loaded!" << endl;
	// Proses perpangkatan
	cout << "Masukkan pangkat: ";
	cin >> M;
	for (l = 1; l < M; l++) {
		// Proses perkalian
		for (i = 0; i < N; i++) {
			for (j = 0; j < N; j++) {
				Hasil[i][j] = 0;
				for (k = 0; k < N; k++) {
					Hasil[i][j] = Hasil[i][j] + (A[i][k] * B[k][j]);
				}
			}
		}
		// Matriks hasil disimpan ke matriks A
		for (i = 0; i < N; i++) {
			for (j = 0; j < N; j++) {
				A[i][j] = Hasil[i][j];
			}
		}
	}
	// Menulis matriks A ke file
	fout.open("result.txt");
	fout << N << endl;
	for (i = 0; i < N; i++) {
		for (j = 0; j < N; j++) {
			fout << A[i][j] << " ";
		}
		fout << endl;
	}
	fout.close();
	cout << "result exported!" << endl;
	return 0;
}