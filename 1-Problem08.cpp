#include <iostream>

bool eatFood(std::string input, bool &A, bool &B, bool &C, bool &D, bool &E);
void printResult(bool &A, bool &B, bool &C, bool &D, bool &E);

int main() {
    bool A = false, B = false, C = false, D = false, E = false;
    int i = 0;
    while (i < 2) {
        std::string foodInput;
        std::cout << "Masukan makanan " << i + 1 << ": ";
        std::cin >> foodInput;
        if (eatFood(foodInput, A, B, C, D, E)) {
            i++;
        }
    }
    printResult(A, B, C, D, E);
}

bool eatFood(std::string input, bool &A, bool &B, bool &C, bool &D, bool &E) {
    if (input == "ikan") {
        A = true;
        C = true;
        return true;
    }
    else if (input == "daging") {
        B = true;
        C = true;
        D = true;
        return true;
    }
    else if (input == "sayur") {
        D = true;
        E = true;
        return true;
    }
    else if (input == "buah") {
        B = true;
        return true;
    }
    else {
        std::cout << "Makanan tidak sesuai" << std::endl;
        return false;
    }
}

void printResult(bool &A, bool &B, bool &C, bool &D, bool &E) {
    std::cout << "Mineral ";
    if (!A) {
        std::cout << "A ";
    }
    if (!B) {
        std::cout << "B ";
    }
    if (!C) {
        std::cout << "C ";
    }
    if (!D) {
        std::cout << "D ";
    }
    if (!E) {
        std::cout << "E ";
    }
    std::cout << "tidak didapatkan Tuan Vin" << std::endl;
}