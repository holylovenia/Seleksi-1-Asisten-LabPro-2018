#include <iostream>
#include <fstream>
using namespace std;

int main () {
    // Buka file
    ifstream fileinput;
    fileinput.open("matriks.txt");
    if (fileinput.is_open()) {
        // Masukkan jumlah indeks matriks dari file
        int idx;
        bool bysim = true;
        fileinput >> idx;
        int soal[idx][idx];
        // Masukkan isi file ke elemen matriks
        for (int i = 0; i < idx; i++) {
            for (int j = 0; j < idx; j++) {
                fileinput >> soal[i][j];
            }
        }
        fileinput.close();
        cout << "Matrix loaded!" << endl;
        // Cek bisymmetric
        // Cek diagonal pertama
        for (int i = 0; i < idx; i++) {
            for (int j = i; j < idx; j++) {
                if (soal[i][j] != soal[j][i]) {
                    bysim = false;
                    break;
                }
            }
            if (!bysim) {
                break;
            }
        }
        // Cek diagonal kedua
        for (int i = idx - 1; i >= 0; i--) {
            for (int j = 0; j < idx - i; j++) {
                if (soal[j][i] != soal[idx - 1 -i][idx - 1 - j]) {
                    bysim = false;
                    break;
                }
            }
            if (!bysim) {
                break;
            }
        }
        // Tampilkan hasil cek
        if (!bysim) {
            cout << "No" << endl;
        } else {
            cout << "Yes" << endl;
        }
    } else {
        // Tampilkan pesan error bila tidak ada file
        cout << "File missing!!" << endl;
    }
    return 0;
}