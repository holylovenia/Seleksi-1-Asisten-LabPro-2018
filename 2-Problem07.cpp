#include <iostream>

int main() {
    int N;
    std::cout << "Masukan N :";
    std::cin >> N;
    for (int i = 0; i <= N * 2; i++) {
        for (int j = 0; j <= N * 2; j++) {
            if (i == N) {
                if (j == N)
                    std::cout << "+";
                else 
                    std::cout << "-";
            }
            else {
                if (j == N)
                    std::cout << "|";
                else
                    std::cout << " ";
            }
        }
        std::cout << std::endl;
    }
}