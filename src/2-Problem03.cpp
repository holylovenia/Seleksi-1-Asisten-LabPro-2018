#include <iostream>


using namespace std;

int main()
{
    int prevNum = 0;
    int currNum = 1;
    int N;

    cout << "Masukkan banyaknya bilangan :";
    cin >> N;
    for (int i = 0; i < N; i++) {
        if (currNum % 3 == 0) {
            currNum++;
        }
        cout << currNum << endl;
        currNum += prevNum;
        prevNum = currNum - prevNum;
    }

    return 0;

}
