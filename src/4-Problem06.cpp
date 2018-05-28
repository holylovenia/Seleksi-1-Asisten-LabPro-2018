#include <iostream>
using namespace std;

int main()
{
	int NAdolf, NTetangga, NeffTetangga = 0;
	int i, j;

	cout << "Masukkan jumlah kekayaan negara Adolf : ";
	cin >> NAdolf;
	string kekayaanAdolf[NAdolf];
	cout << "Masukkan kekayaan negara Adolf :" << endl;
	for (i = 0; i < NAdolf; ++i)
	{
		cin >> kekayaanAdolf[i];
	}

	cout << "Masukkan jumlah kekayaan negara tetangga : ";
	cin >> NTetangga;
	string kekayaanTetangga[NTetangga];
	string temp;
	cout << "Masukkan kekayaan negara tetangga :" << endl;
	for (i = 0; i < NTetangga; ++i)
	{
		cin >> temp;

		j = 0;
		while (j < NAdolf && (kekayaanAdolf[j] != temp)) {
			j++;
		}

		if (j == NAdolf) {
			kekayaanTetangga[NeffTetangga] = temp;
			NeffTetangga++;
		}
	}

	if (NeffTetangga == 0) {
		cout << "Negara adolf memiliki segalanya" << endl;
	}
	else {
		cout << "Negara adolf tidak memiliki :" << endl;
		for (i = 0; i < NeffTetangga; ++i)
		{
			cout << kekayaanTetangga[i] << endl;
		}
	}

	return 0;
}