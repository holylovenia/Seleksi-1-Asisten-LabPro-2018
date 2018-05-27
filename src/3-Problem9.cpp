// ===============
// (c) Ihsan M. A.
// 	135-16-028
// ===============
#include <bits/stdc++.h>
using namespace std;

// Chapter 3 Problem 9
// Idea:
// 	Iterasi [A, B] dan cek setiap bilangan
// Assumption(s):
// 	-

// Palindrome checker
bool isPalindrome(int x) {
	int t = 0, tx = x;
	while (x) {
		t *= 10;
		t += x%10;
		x /= 10;
	}
	return t == tx;
}

int main() {
	// Input A dan B
	int a, b;
	printf("Masukkan nilai range bilangan A dan B : "); scanf("%d %d", &a, &b);

	puts("");
	printf("Palindrome antara %d dan %d adalah:\n", a, b);
	
	// Brute check pada interval [A, B]
	int flag = 0;
	for (int i = a; i <= b; i++) {
		if (isPalindrome(i)) {
			puts("");
			cout << i << endl;
			if (!flag) flag = 1;
		}
	}

	printf(flag ? "" : "\nTIDAK ADA\n");

	return 0;
}