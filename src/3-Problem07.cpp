#include <iostream>
using namespace std;

int C(int i, int j);
// Fungsi ini akan mengembalikan nilai iCj
// yaitu kombinasi j buah benda yang mungkin dari
// i buah benda

int Faktorial (int i);
// Fungsi ini akan mengembalikan nilai i!
// yaitu nilai ix(i-1)x(i-2)...2x1 

int main()
{
	int N;
	int i, j;

	cout << "Masukan jumlah baris: ";
	cin >> N;

	for (i = 0; i < N; ++i)
	{
		for (j = 0; j <= i; ++j)
		{
			cout << C(i,j) << " ";
		}
		
		cout << endl;
	}

	return 0;
}

int C(int i, int j) {
	return Faktorial(i)/(Faktorial(j)*(Faktorial(i-j)));
}

int Faktorial (int i) {
	int count = 1;
	int j;

	for (j = 1; j <= i; ++j)
	{
		count *= j;
	}

	return count;
}