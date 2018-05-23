#include <iostream>
#include <string>
using namespace std;

// Isi array dari user input
void isiStok(string *stok, int& size) {
	cin.ignore(256, '\n');
	for(int i = 0; i < size; i++){
		string namaBarang;
		cout << "Masukkan nama barang : "; getline(cin, namaBarang);
		stok[i] = namaBarang;
	}
}

// Tampilkan isi array ke layar dengan format yang ditentukan
void tampilkanStok(string *stok, int& size){
	cout << "Stok toko : ";
	for(int i = 0; i < size; i++){
		
		if(stok[i].compare("") != 0){
			cout << stok[i];

			if(i < size-1){
				cout << ", ";
			}
		}
	}

	cout << endl;
}

// Cari first occurence dari barang yang ada di dalam array
// Return -1 kalau tidak ada, return indeks kalau ada
int cariBarang(string *stok, int& size, string& barang){
	int idx = -1;

	for(int i = 0; i < size; i++){
		if(barang.compare(stok[i]) == 0){
			idx = i;
			break;
		}
	}

	return idx;
}

// Hapus barang dari array dengan cara isi string kosong
void jualBarang(string *stok, int& idx){
	string str = "";
	stok[idx] = str;
}

int main() {

	int size;
	do{
		cout << "Masukkan jumlah barang : "; cin >> size;
	} while (size <= 0);

	int jmlBarang = size; //jmlBarang sebagai penanda sisa barang di array

	// isi array
	string stok[size];
	isiStok(stok, size);
	
	do{
		cout << endl;
		cout << "1. Jual" << endl;
		cout << "2. Lihat stok" << endl;

		int pilihan;
		cout << "Pilihan menu : "; cin >> pilihan;

		if(pilihan == 1){ //hapus barang dari array
			string namaBarang;
			cin.ignore(256, '\n');
			cout << "Masukkan nama barang : "; getline(cin, namaBarang);

			// lokasi barang = indeks barang dalam array
			int lokasiBarang = cariBarang(stok, size, namaBarang);

			if(lokasiBarang == -1){ // barang tidak ditemukan
				cout << "Barang tidak ada" << endl;
			}
			else { // barang ditemukan
				jualBarang(stok, lokasiBarang);
				cout << "Barang berhasil dijual" << endl;
				jmlBarang--;
			}

		}
		else if(pilihan == 2){ //tampilkan barang-barang dalam array
			tampilkanStok(stok, size);
		}

	} while (jmlBarang > 0); // barang dalam array sudah habis

	cout << endl << "Barang sudah habis, silahkan melakukan restok barang" << endl;

	return 0;
}