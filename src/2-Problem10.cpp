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