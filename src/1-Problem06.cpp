#include <iostream>
using namespace std;

int main () {
    // KAMUS
    int sewapokok, waktusewa, dendasewa, lamasewa, hargatotal;
    // Memasukkan harga sewa pokok, batas waktu sewa, tambahan harga sewa, dan lama Tuan Vin meminjam
    // Asumsi inputan valid, yaitu tidak nol dan tidak negatif
    cout << "Masukan harga sewa pokok: ";
    cin >> sewapokok;
    cout << "Masukan batas waktu sewa: ";
    cin >> waktusewa;
    cout << "Masukan tambahan harga sewa: ";
    cin >> dendasewa;
    cout << "Masukan lama Tuan Vin meminjam: ";
    cin >> lamasewa;
    // Hitung harga yang harus dibayar
    if (lamasewa > waktusewa) {
        hargatotal = sewapokok*waktusewa + (lamasewa-waktusewa)*(sewapokok+dendasewa);
    } else {
        hargatotal = sewapokok*lamasewa;
    }
    // Tampilkan harga yang harus dibayar
    cout << "Harga sewa yang harus dibayar Tuan Vin adalah: " << hargatotal << endl;
    return 0;
}