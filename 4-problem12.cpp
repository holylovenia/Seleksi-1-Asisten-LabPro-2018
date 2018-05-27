#include <iostream>
using namespace std;

#define MAX 100

/**
 * Tipe data elementCounter: Menyimpan jumlah kemunculan tiap elemen
 * unik pada array
 */
typedef struct {
    int arr[MAX];
    int count[MAX];
    int neff;
} elementCounter;

/**
 * Mengembalikan indeks kemunculan elemen array pada distArr array,
 * -1 apabila tidak ditemukan
 */
int getElmtIdx(elementCounter distinctArr, int el) {
    int i = 0;
    bool found = false;

    while (!found && i < distinctArr.neff) {
        if (distinctArr.arr[i] == el) {
            found = true;
        } else {
            i++;
        }
    }
    if (found) {
        return i;
    } else {
        return -1;
    }
}

/**
 * Mencatat semua angka pada array dan menghitung jumlah kemunculannya
 * Mengembalikan distinct array dengan data tiap elemen array arr 
 * beserta jumlah kemunculannya.
 */
elementCounter countOccurence(int arr[], int n) {
    int i;
    int idx;

    elementCounter distArr;
    distArr.neff = 0;

    for (i = 0; i < n; i++) {
        idx = getElmtIdx(distArr, arr[i]);
        if (idx == -1) {
            distArr.arr[distArr.neff] = arr[i];
            distArr.count[distArr.neff] = 1;
            distArr.neff++;
        } else {
            distArr.count[idx]++;
        }
    }
    
    return distArr;
}

/**
 * Mencetak elemen array yang unik.
 * Cetak elemen elementCounter apabila jumlah kemunculannya adalah 1.
 */
void printUniqueKey(elementCounter distArr) {
    cout << "Kunci yang harus diduplikat:" << endl;
    for (int i = 0; i < distArr.neff; i++) {
        if (distArr.count[i] == 1) {
            cout << distArr.arr[i] << endl;
        }
    }
}

/**
 * Main program
 */
int main() {
    int arrKey[MAX];
    int n;

    cout << "Masukkan jumlah kunci yang ada : ";
    cin >> n;
    cout << "Masukkan nomor ruangan kunci yang ada : " << endl;
    for (int i=0; i<n; i++) {
        cin >> arrKey[i];
    }

    //Menyimpan array tiap elemen beserta jumlah kemunculannya
    elementCounter distArr;
    distArr = countOccurence(arrKey, n);
    printUniqueKey(distArr);
    
    return 0;
}