/* NIM/NAMA	: 18216011/Akbar Ghifari
 * TANGGAL	: 21/05/18
 * SOAL		: BAB 5 PROBLEM 2 (File Eksternal)
 */

#include <iostream>
#include <fstream>
using namespace std;

int main(){
    ifstream in;
    ofstream out;
    int N;
    int i, j;
    int rot;

    //PEMBUKAAN FILE EKSTERNAL
    in.open("image.txt");
    if (in.is_open()){
        //INPUT DIMENSI MATRIKS N*N
        in >> N;
    }

    //PEMBACAAN MATRIKS
    int M[N][N];
    i = 0;
    j = 0;
    while (!in.eof()){
        for (j=0; j<N; j++){
            if (in != " "){
                in >> M[i][j];
            }
        }
        i++;
    }

    //INPUT JUMLAH ROTASI
    cout << "file loaded!" << endl;
    cout << "Masukkan banyak rotasi : ";
    cin >> rot;

    rot = rot %4;
    int arr[N][N];

    //PEMINDAHAN HASIL ROTASI KE 'OUT'
    for (int cc = 0; cc < rot; cc++){
        for (i = 0; i<N; i++){
            for (j = 0; j<N; j++){
                arr[j][N-i-1] = M[i][j];
            }
        }

        //ARRAY COPY
        for (i = 0; i<N; i++){
            for (j = 0; j<N; j++){
                M[i][j] = arr[i][j];
            }
        }
    }

    //PRINT FILE EKSTERNAL
    out.open("result.txt");
    out << N << endl;
    for (i=0; i<N; i++){
        for (j=0; j<N; j++){
            out << M[i][j] << " ";
        }
        out << endl;
    }

    cout << "result exported!";

    return 0;
}
