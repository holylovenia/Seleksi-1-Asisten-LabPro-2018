#include <iostream>
#include <string>
using namespace std;

int main () {
    // Kamus
    int jlhwarna, jlhbarang;
    string *arrwarna, *arrbarang;
    // Masukkan warna
    cout << "Masukkan jumlah warna : ";
    cin >> jlhwarna;
    arrwarna = new string[jlhwarna];
    cout << "Masukkan nama warna : ";
    for (int i = 0; i < jlhwarna; i++) {
        cin >> arrwarna[i];
    }
    // Masukkan barang
    cout << "Masukkan jumlah barang : ";
    cin >> jlhbarang;
    arrbarang = new string[jlhbarang];
    cout << "Masukkan nama barang : ";
    for (int i = 0; i < jlhbarang; i++) {
        cin >> arrbarang[i];
    }
    // Menampilkan barang dengan warnanya
    cout << "Ide barang selanjutnya :" << endl;
    for (int i = 0; i < jlhbarang; i++) {
        for (int j = 0; j < jlhwarna; j++) {
            cout << arrbarang[i] << " " << arrwarna[j] << endl;
        }
    }
    return 0;
}