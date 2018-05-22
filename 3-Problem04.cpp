/* NIM/NAMA	: 18216011/Akbar Ghifari
 * TANGGAL	: 21/05/18
 * SOAL		: BAB 3 PROBLEM 4 (Bilangan Prima)
 */

#include <iostream>
using namespace std;

bool prime (int X){
    if ((X==1)||(X==0)){
        return false;
    } else {
        int divisor = X-1;
        int counter = 0;
        while (divisor != 1){
            if (X % divisor == 0){
                counter++;
            }
            divisor--;
        }
        //EKSKULSIF 1 DAN X
        if (counter == 0){
            return true;
        } else {
            return false;
        }
    }
}

int main(){
    int A;
    int B;

    cout << "Masukkan nilai A : ";
    cin >> A;
    cout << "Masukkan nilai B : ";
    cin >> B;

    if (B < A){
        int temp;
        temp = A;
        A = B;
        B = temp;
    }

    cout << "Bilangan prima diantara " << A << " sampai " << B << " adalah:" << endl;
    while (A != B+1){
        if (prime(A)){
            cout << A << endl;
        }
        A++;
    }
    return 0;
}
