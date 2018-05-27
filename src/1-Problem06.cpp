#include <iostream>
using namespace std;

int main () {
    int sewapokok, waktusewa, dendasewa, lamasewa, hargatotal;
    cout << "Masukan harga sewa pokok: ";
    cin >> sewapokok;
    while (sewapokok < 0) {
        cout << "Harga tidak boleh negatif. Masukan harga sewa pokok: ";
        cin >> sewapokok;
    };
    cout << "Masukan batas waktu sewa: ";
    cin >> waktusewa;
    while (waktusewa <= 0) {
        cout << "Batas waktu sewa tidak boleh nol kebawah. Masukan batas waktu sewa: ";
        cin >> waktusewa;
    };
    cout << "Masukan tambahan harga sewa: ";
    cin >> dendasewa;
    while (dendasewa <= 0) {
        cout << "Tambahan harga sewa tidak boleh negatif. Masukan tambahan harga sewa: ";
        cin >> dendasewa;
    };
    cout << "Masukan lama Tuan Vin meminjam: ";
    cin >> lamasewa;
    while (lamasewa < 0) {
        cout << "Lama meminjam tidak boleh negatif. Masukan lama Tuan Vin meminjam: ";
        cin >> lamasewa;
    };
    if (lamasewa > waktusewa) {
        hargatotal = sewapokok*waktusewa + (lamasewa-waktusewa)*(sewapokok+dendasewa);
    } else {
        hargatotal = sewapokok*lamasewa;
    }
    cout << "Harga sewa yang harus dibayar Tuan Vin adalah: " << hargatotal << endl;
    return 0;
}