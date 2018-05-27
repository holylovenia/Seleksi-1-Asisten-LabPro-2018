#include <iostream>
using namespace std;

int main () {
    // Kamus, asumsi jumlah anggota kelompok < 999 dan tidak negatif
    int jlhkelompok, anggotakelompok, minanggota = 999, nokelompok;
    // Masukkan jumlah kelompok
    cout << "Masukan jumlah kelompok :";
    cin >> jlhkelompok;
    // Looping, menentukan jumlah anggota minimum seiring dengan dimasukkannya input pengguna
    for (int i = 1; i <= jlhkelompok; i++) {
        cout << "Masukan jumlah anggota kelompok " << i << " :";
        cin >> anggotakelompok;
        if (anggotakelompok < minanggota) {
            nokelompok = i;
            minanggota = anggotakelompok;
        }
    }
    // Tampilkan kelompok dengan jumlah anggota minimum
    cout << "Kelompok dengan anggota tersedikit adalah kelompok " << nokelompok << endl;
    return 0;
}