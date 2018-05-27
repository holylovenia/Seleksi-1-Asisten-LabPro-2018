// ===============
// (c) Ihsan M. A.
// 	135-16-028
// ===============
#include <bits/stdc++.h>
using namespace std;

// Chapter 1 Problem 11
// Idea:
// 	Brute check 8 kemungkinan:
// 		3 baris
// 		3 kolom
// 		2 diagonal
// Assumption(s):
// 	-

int main() {
	const int ARR_SIZE = 3;
	char arr[ARR_SIZE][ARR_SIZE];
	char x;

	// Input papan
	for (int i = 0; i < ARR_SIZE; i++) {
		for (int j = 0; j < ARR_SIZE; ) {
			// Skip whitespace
			if (cin >> x and x == ' ') continue;
			arr[i][j++] = x;
		}
	}

	char ans;
	bool flag = 0;

	// Cek diagonal
	if (!flag and arr[1][1] == arr[0][0] and arr[1][1] == arr[2][2]) {
		ans = arr[1][1];
		flag = 1;
	}
	if (!flag and arr[1][1] == arr[2][0] and arr[1][1] == arr[0][2]) {
		ans = arr[1][1];
		flag = 1;
	}

	// Cek horizontal
	if (!flag and arr[0][1] == arr[0][0] and arr[0][1] == arr[0][2]) {
		ans = arr[0][1];
		flag = 1;
	}
	if (!flag and arr[1][1] == arr[1][0] and arr[1][1] == arr[1][2]) {
		ans = arr[1][1];
		flag = 1;
	}	
	if (!flag and arr[2][1] == arr[2][0] and arr[2][1] == arr[2][2]) {
		ans = arr[2][1];
		flag = 1;
	}

	// Cek vertikal
	if (!flag and arr[1][0] == arr[0][0] and arr[1][0] == arr[2][0]) {
		ans = arr[1][0];
		flag = 1;
	}	
	if (!flag and arr[1][1] == arr[0][1] and arr[1][1] == arr[2][1]) {
		ans = arr[1][1];
		flag = 1;
	}	
	if (!flag and arr[1][2] == arr[0][2] and arr[1][2] == arr[2][2]) {
		ans = arr[1][2];
		flag = 1;
	}

	flag ? printf("Pemain %c menang\n", ans) : puts("Tidak ada yang menang");

	return 0;
}