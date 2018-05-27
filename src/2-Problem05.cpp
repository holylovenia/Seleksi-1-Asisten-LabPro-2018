#include <iostream>
using namespace std;

int main () {
    int jlhkelompok, anggotakelompok, minanggota = 999, nokelompok;
    cout << "Masukan jumlah kelompok :";
    cin >> jlhkelompok;
    for (int i = 1; i <= jlhkelompok; i++) {
        cout << "Masukan jumlah anggota kelompok " << i << " :";
        cin >> anggotakelompok;
        if (anggotakelompok < minanggota) {
            nokelompok = i;
            minanggota = anggotakelompok;
        }
    }
    cout << "Kelompok dengan anggota tersedikit adalah kelompok " << nokelompok << endl;
    return 0;
}