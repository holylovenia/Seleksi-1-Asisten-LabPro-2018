#include <iostream>
#include <string>
#include <list>
#include <vector>

using namespace std;

int main()
{

    int NBarang;
    list<string> listBarang;

    cout << "Masukkan jumlah barang : ";
    cin >> NBarang;

    for (int i = 0; i < NBarang; i++) {
        string tempBarang;
        cout << "Masukkan nama barang : ";
        cin >> tempBarang;
        listBarang.push_back(tempBarang);
    }
    while (!listBarang.empty()) {
        int opsi;
        cout << "   1.Jual" << endl;
        cout << "   2.Lihat stok" << endl;
        cout << "Pilihan menu : ";
        cin >> opsi;
        if (opsi == 1) {
            string tempBarang;

            cout << "Masukkan nama barang : ";
            cin >> tempBarang;
            list<string>::iterator it = listBarang.begin();
            bool isAda = false;

            while (it != listBarang.end()) {
                if ((*it) == tempBarang) {
                    isAda = true;
                    it = listBarang.erase(it);
                    break;
                } else {
                    it++;
                }
            }

            if (isAda) {
                cout << "Barang berhasil dijual" << endl;
            } else {
                cout << "Barang tidak ada" << endl;
            }
        } else {
            list<string>::iterator it = listBarang.begin();
            cout << "Stok toko : " << (*it);
            advance(it,1);

            while (it != listBarang.end()) {
                    cout <<", " << (*it);
                    it++;
            }
            cout << endl;
        }
    }
    cout << "Barang sudah habis, silahkan melakukan restok barang" << endl;
    return 0;

}
