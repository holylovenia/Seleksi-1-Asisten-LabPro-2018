#include <iostream>
using namespace std;

int main() {
    int X, Y;

    cout << "Masukkan nilai X: ";
    cin >> X;
    cout << "Masukkan nilai Y: ";
    cin >> Y;
    
    cout << "Titik (" << X << "," << Y << ") berada di ";

    //cek setiap kondisi
    if (X > 0 && Y > 0) {
        cout << "kuadran 1";
    } else if (X < 0 && Y > 0) {
        cout << "kuadran 2";
    } else if (X < 0 && Y < 0) {
        cout << "kuadran 3";
    } else if (X > 0 && Y < 0) {
        cout << "kuadran 4";
    } else if (X == 0 && Y == 0) {
        cout << "titik origin";
    } else if (Y == 0) {
        cout << "sumbu X";
    } else {
        cout << "sumbu Y";
    }

    return 0;
}