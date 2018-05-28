#include <iostream>
using namespace std;

bool cekPrima(int i);
// Merupakan fungsi untuk mengecek apakah nilai i 
// merupakan bilangan prima atau tidak. True berarti 
// bilangan prima dan False berarti tidak.

int main()
{
	int A,B;
	int i;

	// Menerima Input nilai A dan B
	cout << "Masukkan nilai A :";
	cin >> A;
	cout << "Masukkan nilai B :";
	cin >> B;

	// Menuliskan jawaban 
	cout << "Bilangan prima diantara " << A << " sampai ";
	cout << B << " adalah" << endl;

	for (i = A; i <= B; ++i)
	{
		if (cekPrima(i)) {
			cout << i << endl;
		}
	}
	return 0;
}

bool cekPrima(int i) {
	int j;

	if (i <= 1) {
		return false;
	}
	else {
		int count = 0;
		for (j = 2; j*j <= i; ++j)
		{
			if (i % j == 0) {
				count++;
			}
		}

		if (count == 0) {
			return true;
		}
		else {
			return false;
		}
	}
}