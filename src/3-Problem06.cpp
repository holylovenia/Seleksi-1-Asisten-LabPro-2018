#include <iostream>
#include <cmath>
#include <limits>

struct Position {
    int x;
    int y;
};

void assignPosisi(Position & posisi);
void assignBanyakPenjual(int & banyakPenjual);
double getJarak(Position & asal, Position & tujuan);

int main() {
    Position posisiMahasiswa;
    double jarakMinimum = std::numeric_limits<double>::max();
    int banyakPenjual, penjualTerdekat = -1;
    std::cout << "Masukan posisi mahasiswa" << std::endl;
    assignPosisi(posisiMahasiswa);
    assignBanyakPenjual(banyakPenjual);
    for (int i = 0; i < banyakPenjual; i++) {
        Position posisiPenjual;
        std::cout << "Masukan posisi penjual " << i + 1 << std::endl;
        assignPosisi(posisiPenjual);
        double jarak = getJarak(posisiMahasiswa, posisiPenjual);
        if (jarak < jarakMinimum) {
            jarakMinimum = jarak;
            penjualTerdekat = i + 1;
        }
    }
    std::cout << "Penjual terdekat adalah penjual " << penjualTerdekat << std::endl;
}

void assignPosisi(Position & posisi) {
    std::cout << "X : ";
    std::cin >> posisi.x;
    std::cout << "Y : ";
    std::cin >> posisi.y;
}

void assignBanyakPenjual(int & banyakPenjual) {
    std::cout << "Masukan banyak penjual: ";
    std::cin >> banyakPenjual;
}

double getJarak(Position & asal, Position & tujuan) {
    return sqrt(pow(asal.x - tujuan.x, 2) + pow(asal.y - tujuan.y, 2));
}