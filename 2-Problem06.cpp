/* NIM/NAMA	: 18216011/Akbar Ghifari
 * TANGGAL	: 21/05/18
 * SOAL		: BAB 2 PROBLEM 6 (Tabungan Rutin Bunga Majemuk)
 */

#include <iostream>
using namespace std;

/* ASUMSI:
 * 0 <= uang tabungan <= (2^32)-1
 * 0 <= bunga <= 100
 * 0 <= lama menabung <= 100
 */

int main(){
    float uang;
    int bunga;
    int durasi;

    cout << "Masukan uang tabungan: ";
    cin >> uang;
    cout << "Masukan persen bunga: ";
    cin >> bunga;
    cout << "Masukan lama menabung: ";
    cin >> durasi;

    //JIKA BELUM SAMPAI 1 BULAN
    if (durasi == 0){
        cout << "Tabungan pada bulan ke-0 = " << uang << endl;
    } else {
        for (int i = 1; i <= durasi ; i++){
            //PENAMBAHAN BUNGA
            uang = uang * ((float)(100+bunga)/100);
            cout << "Tabungan pada bulan ke-" << i << " = " << (int)uang << endl;

            //TABUNGAN RUTIN
            uang = uang + 1000;
        }
    }
    return 0;
}
