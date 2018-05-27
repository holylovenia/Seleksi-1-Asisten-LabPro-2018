#include <iostream>
using namespace std;

int main() {
    int x, n;
    int a = 1;
    int b = 1;

    cout << "Masukkan banyaknya bilangan :";
    cin >> n;

    //asumsi masukan lebih besar dari 0
    cout << n << " bilangan pertama dari deret adalah\n";
    x = a;
    cout << x << endl;
    x = b;
    for (int i = 2; i <= n; i++) {
        cout << x << endl;
        x = a + b;
        //Jika x kelipatan 3, tambahkan dengan 1
        if (x % 3 == 0) {
            x += 1;
        }
        b = a;
        a = x;
    }

    return 0;
}