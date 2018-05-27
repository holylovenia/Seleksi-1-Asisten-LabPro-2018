/* NIM/NAMA	: 18216011/Akbar Ghifari
 * TANGGAL	: 21/05/18
 * SOAL		: BAB 1 PROBLEM 7 (Batu dan kertas)
 */

/* ASUMSI:
 * Hanya dilakukan satu kali per run
 * Hanya menerima lowercase dari "baru", "gunting", dan "kertas"
 * Anda dapat menang atau seri (tidak dapat kalah)
 */

#include <iostream>
#include <string>
using namespace std;

int main(){
	string out_vin;
	string out_me;
	bool valid = false;         //status valid apa bila menang atau seri

    cout << "Tuan vin mengeluarkan: ";
    cin >> out_vin;
    cout << "Anda mengeluarkan: ";

    while (!valid){
        cin >> out_me;
        if ((out_vin == "gunting") && (out_me == "batu")){
            valid = true;
        } else if ((out_vin == "kertas") && (out_me == "kertas")){
            valid = true;
        } else if ((out_vin == "batu") && ((out_me == "kertas")||(out_me == "batu"))){
            valid = true;
        } else {
            cout << "Masukan tidak diterima, silakan keluarkan batu atau kertas: ";
        }
    }
    return 0;
}
