#include <iostream>
using namespace std;

bool is_composite(int n);

int main () {
    int A, B, min, max;
    cout << "Masukkan nilai A : ";
    cin >> A;
    cout << "Masukkan nilai B : ";
    cin >> B;
    if (A > B) {
        A = max;
        B = min;
    } else {
        A = min;
        B = max;
    }
    cout << "Bilangan komposit diantara " << min << " sampai " << max << " adalah :" << endl;
    for (int i = min; i <= max; i++) {
        if (is_composite(i)) {
            cout << i << endl;
        }
    }
    return 0;
}

bool is_composite(int n) {
    if (n <= 1) {
        return true;
    }
    else if (n <= 3) {
        return false;
    } else if ((n % 2 == 0)||(n % 3 == 0)) {
        return true;
    }
    int i = 5;
    while (i*i <= n) {
        if ((n % i == 0)||(n % (i+2) == 0)) {
            return true;
        }
        i += 6;
    }
    return false;
}