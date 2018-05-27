#include <iostream>


using namespace std;

int main()
{
    int X,Y;
    cout << "Masukkan nilai X : ";
    cin >> X;
    cout << "Masukkan nilai Y : ";
    cin >> Y;

    cout << "Titik (" << X << "," << Y << ") berada di ";

    if ((X == 0) && (Y == 0)) {
        cout << "titik origin" << endl;
    } else if (X == 0) {
        cout << "sumbu Y" << endl;
    } else if (Y == 0) {
        cout << "sumbu X" << endl;
    } else {
        cout << "kuadran ";
        if ((X > 0) && (Y > 0)) {
            cout << "1" << endl;
        } else if ((X < 0) && (Y > 0)) {
            cout << "2" << endl;
        } else if ((X < 0) && (Y < 0)) {
            cout << "3" << endl;
        } else if ((X > 0) && (Y < 0)) {
            cout << "4" << endl;
        }
    }

    return 0;
}
