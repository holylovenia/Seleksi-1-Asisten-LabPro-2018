#include <iostream>
#include <string>

using namespace std;

int HexToDec(string hex) {
    int sum = 0;

    if (hex[0] > 53) {
        sum += (int(hex[0]) - 55) * 16;
    } else {
        sum += (int(hex[0]) - 48) * 16;
    }
    if (hex[1] > 53) {
        sum += int(hex[1]) - 55;
    } else {
        sum += int(hex[1]) - 48;
    }

    return sum;
}

string DecToHex(int dec) {
    string firstChar;
    string secondChar;
    string hex;

    if ((dec / 16) > 9) {
        firstChar = char((dec / 16) + 55);
    } else {
        firstChar = char((dec / 16) + 48);
    }

    if ((dec % 16) > 9) {
        secondChar = char((dec % 16) + 55);
    } else {
        secondChar = char((dec % 16) + 48);
    }

    hex = firstChar + secondChar;
    return hex;
}

int main()
{

    string A,B;
    cout << "Masukan A : ";
    cin >> A;
    cout << "Masukan B: ";
    cin >> B;
    cout << A << " + " << B << " = " << DecToHex((HexToDec(A)) + (HexToDec(B))) << endl;

    return 0;
}
