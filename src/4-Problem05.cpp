// 13516017 - Muhammad Nurraihan Naufal
// 26 Mei 2018
// Bab 4 - Problem 5

#include <iostream>
using namespace std;

int main() {
	// KAMUS
	int i, N;
	int A[100]; // Array A
	int B[100]; // Array B
	// ALGORITMA
	cout << "Masukkan N : ";
	cin >> N;
	// Menerima input untuk array A
	cout << "Masukkan array A : ";
	for (i = 0; i < N; i++){
		cin >> A[i];
	}
	// Menerima input untuk array B
	cout << "Masukkan array B : ";
	for (i = 0; i < N; i++){
		cin >> B[i];
	}
	// Proses membandingkan
	i = 0;
	while ((i < N) && (A[i] == B[i])) {
		i++;
	}
	// i == N atau A[i] != B[i]
	cout << i << endl;
	if (i == N) {
		cout << "Array A sama besar dengan array B" << endl;
	} else if (A[i] < B[i]) {
		cout << "Array A lebih kecil dari array B" << endl;
	} else /*A[i] > B[i]*/ {
		cout << "Array A lebih besar dari array B" << endl;
	}
	return 0;
}