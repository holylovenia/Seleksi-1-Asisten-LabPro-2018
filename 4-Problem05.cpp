#include <iostream>

void assignArrayValue(int N, int * data);
int smallerThan(int N, int * arrayA, int * arrayB);

int main() {
    int N;
    std::cout << "Masukkan N : ";
    std::cin >> N;
    int * arrayA = new int[N];
    int * arrayB = new int[N];
    std::cout << "Masukkan array A : ";
    assignArrayValue(N, arrayA);
    std::cout << "Masukkan array B : ";
    assignArrayValue(N, arrayB);
    switch (smallerThan(N, arrayA, arrayB)) {
        case -1 : 
            std::cout << "Array A lebih besar dari array B" << std::endl;
            break;
        case 0 :
            std::cout << "Array A sama besar dengan array B" << std::endl;
            break;
        case 1 :
            std::cout << "Array A lebih kecil dari array B" << std::endl;
            break;        
    }
}

void assignArrayValue(int N, int * data) {
    for (int i = 0; i < N; i++) {
        std::cin >> data[i];
    }
}

int smallerThan(int N, int * arrayA, int * arrayB) {
    for (int i = 0; i < N; i++) {
        if (arrayA[i] < arrayB[i])
            return 1;
        if (arrayA[i] > arrayB[i])
            return -1;
    }
    return 0;
}