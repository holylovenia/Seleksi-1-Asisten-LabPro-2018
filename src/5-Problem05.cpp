#include <iostream>
#include <fstream>
using namespace std;

int main()
{
	int N, i, j;
	ifstream file("matriks.txt");

	file >> N;
	int matriks[N][N];
	for (i = 0; i < N; i++) {
	    for (j = 0; j < N; j++) {
	        file >> matriks[i][j];
	    }
	}
	file.close();

	cout << "matriks loaded!" << endl;

	bool flag = true;

	int sum = 0;
	// Cek jumlah diagonal kiri atas ke kanan bawah sebagai patokan
	for (i = 0; i < N; i++) {
	    sum += matriks[i][i];
	}

	// cek jumlah diagonal satu lagi apakah sama
	int sum1 = 0;
	for (i = 0; i < N; i++) {
	    sum1 += matriks[i][N-1-i];
	}

	flag = sum1 == sum;

	// cek horizontal
	i = 0;
	while (flag && i < N) {
		int sum1 = 0;
	    for (j = 0; j < N; j++) {
        	sum1 += matriks[i][j];
    	}

    	flag = sum1 == sum;
    	i++;
	}

	// cek vertikal
	i = 0;
	while (flag && i < N) {
		int sum1 = 0;
	    for (j = 0; j < N; j++) {
        	sum1 += matriks[j][i];
    	}

    	flag = sum1 == sum;
    	i++;
	}

	// cek apakah bilangan unik
	bool cekUnik[N*N];
	for (i = 0; i < N*N; i++) {
	    cekUnik[i] = false;
	}

	for (i = 0; i < N; i++) {
	    for (j = 0; j < N; j++) {
	        cekUnik[(matriks[i][j]) - 1] = true;
	    }
	}

	// Jika ada yang tidak terisi (elemen ada yang tidak unik) 
	// maka nilai flag akan false
	i = 0;
	while (flag && (i < N*N)) {
		flag = cekUnik[i];
		i++;
	}

	if (flag) {
		cout << "Yes" << endl;
	}
	else {
		cout << "No" << endl;
	}

	return 0;
}