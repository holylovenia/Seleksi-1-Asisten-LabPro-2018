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