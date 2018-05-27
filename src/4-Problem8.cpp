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