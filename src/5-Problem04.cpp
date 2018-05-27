#include <iostream>
#include <fstream>
#include <string>

void getMatrixLength(std::ifstream & file, int & N);
void getMatrix(std::ifstream & file, int** matrix, int & N);
void powMatrix(int** & matrix, int pow, int** & result, int & N);
void multMatrix(int** & matrixA, int** & matrixB, int** & result, int & N);
void outputMatrix(int** & matrix, int & N);
void allocateMatrix(int** & matrix, int & N);

int main() {
    std::string line;
    std::ifstream matrixFile ("matriks.txt");
    if (matrixFile.is_open()) {
        int N;
        getMatrixLength(matrixFile, N);
        // Alokasikan memori untuk matrix awal
        int** matrix;
        allocateMatrix(matrix, N);
        // Ambil nilai matrix dari file
        getMatrix(matrixFile, matrix, N);
        std::cout << "file loaded!" << std::endl;
        std::cout << "Masukan pangkat: ";
        int power;
        std::cin >> power;
        // Alokasikan memori untuk matrix hasil
        int** result;
        allocateMatrix(result, N);
        powMatrix(matrix, power, result, N);
        outputMatrix(result, N);
        std::cout << "result exported!" << std::endl;
    }
    else {
        std::cout << "File tidak dapat dibuka" << std::endl;
    }
}

void getMatrixLength(std::ifstream & file, int & N) {
    file >> N;
}

void getMatrix(std::ifstream & file, int** matrix, int & N) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            file >> matrix[i][j];
        }
    } 
}

void powMatrix(int** & matrix, int pow, int** & result, int & N) {
    int** mult = matrix;
    for (int i = 0; i < pow - 1; i++) {
        int** resultMult;
        allocateMatrix(resultMult, N);
        multMatrix(mult, matrix, resultMult, N);
        mult = resultMult;
    }
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            result[i][j] = mult[i][j];
        }
    }
}

void multMatrix(int** & matrixA, int** & matrixB, int** & result, int & N) {
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            result[i][j] = 0;
            for (int k = 0; k < N; k++) {
                result[i][j] += matrixA[i][k] * matrixB[k][j];
            }
        }
    }
}

void outputMatrix(int** & matrix, int & N) {
    std::ofstream outputFile ("result.txt");
    outputFile << N << std::endl;
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < N; j++) {
            outputFile << matrix[i][j] << " ";
        }
        outputFile << std::endl;
    }
}

void allocateMatrix(int** & matrix, int & N) {
    matrix = new int* [N];
    for (int i = 0; i < N; i++) {
        matrix[i] = new int[N];
    }
}