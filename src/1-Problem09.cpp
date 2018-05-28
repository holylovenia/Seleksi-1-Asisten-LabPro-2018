#include <iostream>
using namespace std;

int main()
{
	char in, out;
	double awal, akhir;
	bool valid = true;

	/* Menerima jenis suhu masukan */
	cout << "Masukan satuan suhu termometer: ";
	cin >> in;

	/* Menerima besar suhu masukan */
	cout << "Masukan besar suhu: ";
	cin >> awal;
	
	/* Menerima jenis suhu keluaran */
	cout << "Masukan satuan yang ingin diketahui: ";
	cin >> out;
	
	/* Kalkulasi */
	if (in == out) {
		/* tidak ada perubahan */
	}
	else {
		if (in == 'C') {
			switch (out) {
				case 'R':
					akhir = awal * 4 / 5;
					break;
				case 'F':
					akhir = (awal * 9 / 5) + 32;
					break;
				default :
					valid = false; 
			}
		}
		else if (in == 'R') {
			switch (out) {
				case 'C':
					akhir = awal * 5 / 4;
					break;
				case 'F':
					akhir = (awal * 9 / 4) + 32;
					break;
				default :
					valid = false; 
			}
		}
		else if (in == 'F') {
			switch (out) {
				case 'R':
					akhir = (awal - 32) * 4 / 9;
					break;
				case 'C':
					akhir = (awal - 32) * 5 / 9;
					break;
				default :
					valid = false; 
			}
		}
		else {
			// Format Input Salah
			valid = false;
		}
	}
	
	/* Menampilkan hasil */
	cout << "Besar suhu dalam " << out << ": ";
	if (valid) {
		cout << akhir << endl;
	}
	else {
		cout << "UNKNOWN" << endl;
	}
	return 0;
}