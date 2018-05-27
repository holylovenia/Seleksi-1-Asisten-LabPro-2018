/* NIM/NAMA	: 18216011/Akbar Ghifari
 * TANGGAL	: 21/05/18
 * SOAL		: BAB 4 PROBLEM 3 (Tamu Pernikahan)
 */

#include <iostream>
using namespace std;

int main(){
    int N;
    int i;

    do{
        cout << "Masukkan jumlah tamu: ";
        cin >> N;
        }
    while ((N<1)||(N>10000));

    string tamu[N+1];
    for (i = 1; i <=N; i++){
        cout << "Masukkan nama tamu " << i << " : ";
        cin >> tamu[i];
    }

    i = 1;
    int temp_1 = 1;
    int temp_2 = 1;

    cout << "Tamu yang akan mendapat hadiah adalah :" << endl;
    while(i <= N){
        cout << tamu[i] << endl;
        //COUNTER FIBONACCI
        i = temp_1 + temp_2;
        temp_1 = temp_2;
        temp_2 = i;
    }

    return 0;
}
