#include <iostream>
using namespace std;

/**
 * Mengembalikan x pangkat n
 */
int power(int x, int n) {
    int result = 1;
    for (int i = 1; i <= n; i++) {
        result *= x;
    }
    return result;
}

/**
 * Fungsi f(x) = 2x^5 + 3x^4 + 9x^3 − x^2 + 3x − 2
 * Mengembalikan nilai f(x)
 */
int func (int x) {
    return 2*power(x, 5) + 3*power(x, 4) + 9*power(x, 3) - power(x, 2) + 3*x - 2;
}

/**
 * Mencari nilai x berdasarkan nilai fx yang diketahui.
 * Mengembalikan -1 jika tidak ada nilai x yang memenuhi 
 * nilai fx. x lebih dari 30.
 */
int getXFunction (int fx) {
    int i = 1;
    int x = -1;
    int result = -1;
    while (i <= 30 && result < fx) {
        result = func(i);
        if (result == fx) {
            x = i;
        }
        i++;
    }
    return x;
}

int main() {
    int fx, x;

    cout << "Masukkan f(x): ";
    cin >> fx;

    x = getXFunction(fx);
    if (x != -1) {
        cout << "Nilai x adalah " << x << endl;
    } else {
        cout << "Tidak ada x yang sesuai" << endl;
    }
    return 0;
}