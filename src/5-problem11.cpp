#include <iostream>
#include <fstream>
using namespace std;

#define MAX 100

typedef struct {
    int elmt[MAX][MAX]; //container array of array
    int row;            //baris
    int col;            //kolom
} Matrix;

/**
 * Membaca file berisi antrian dan merepresentasikannya
 * ke dalam array of antrian(array).
 */
Matrix fileToMatrix() {
    Matrix Mat;
    ifstream inFile;
    int x;

    inFile.open("../data/queue.txt");
    if (inFile) {
        inFile >> x;
        Mat.row = x;
        inFile >> x;
        Mat.col = x;
        for (int i = 0; i < Mat.row; i++) {
            for (int j = 0; j < Mat.col; j++) {
                inFile >> x;
                Mat.elmt[i][j] = x;
            }
        }
        cout << "file loaded!\n";
    }
    inFile.close();
    return Mat;
}

/**
 * Menghitung panjang sebuah antrian Q dengan
 * jumlah slot = line
 */
int countPanjangAntrian(int Q[], int line) {
    int i = 0;
    bool stop = false;

    while (i < line && !stop) {
        if (Q[i] == 1) {
            stop = true;
        } else {
            i++;
        }
    }
    return line - i;
}

/**
 * Main program
 */
int main() {
    Matrix Queue; //row untuk jumlah kasir, col untuk panjang antrian
    int count;
    int countMax = 0; //counter antrian max

    Queue = fileToMatrix();

    //Mencari antrian terpanjang
    for (int i = 0; i < Queue.row; i++) {
        count = countPanjangAntrian(Queue.elmt[i], Queue.col);
        if (count > countMax) {
            countMax = count;
        }
    }
    cout << "Antrian terpanjang adalah " << countMax << endl;
    
    return 0;
}