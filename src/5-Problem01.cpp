#include <iostream>
#include <fstream>
using namespace std;

int main () {
    ifstream fileinput;
    fileinput.open("matriks.txt");
    if (fileinput.is_open()) {
        cout << "Matrix loaded!" << endl;
        int idx;
        int soal[][];
        bool bysim = true;

        //-------YANG BELUM---------
        //Baca karakter pertama
        //Alokasi matriks soal
        //Masukkan angka dari file ke soal

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
        if (!bysim) {
            cout << "No" << endl;
        } else {
            cout << "Yes" << endl;
        }
    } else {
        cout << "File missing!!" << endl;
    }
    return 0;
}