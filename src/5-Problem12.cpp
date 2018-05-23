#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <algorithm>
#include <vector>
#include <unistd.h>
using namespace std;


// split string dan masukkan token ke dalam vector
template <class Container>
void split(const string& str, Container& cont, char delim = ' '){
	stringstream ss(str);
	string token;
	while(getline(ss, token, delim)){
		cont.push_back(token);
	}
}

// isi matriks dari file eksternal
void fillMatrix(int **mat, int& size, ifstream& file){

	vector<string> heights;
	string reader;

	for (int i = 0; i < size; i++){
		heights.clear();
		getline(file, reader);
		split(reader, heights);

		for (int j = 0; j < size; j++){
			mat[i][j] = stoi(heights[j]);
		}
	}

}

// cek baris matriks untuk mencari panjang sisi persegi
// Jika persegi, return panjangnya. Jika tidak, return 1
// Pengecekkan dilakukan jika elemen yang dicek adalah elemen pojok kiri atas persegi
int checkRow(int **mat, int& row, int& col, int& size){
	int length = 1;
	
	int elem = mat[row][col]; // elemen yang sedang di cek
	int upside = elem, downside = elem, leftside = elem, rightside = elem; // elemen sebelah mata angin elem

	// kasus normal
	if(row > 0 && row < size-1){
		upside = mat[row-1][col];
		downside = mat[row+1][col];
	}
	
	// kasus jika posisi kolom bukan bukan kolom pertama
	if(col > 0){
		leftside = mat[row][col-1];
	}

	// kasus jika posisi kolom bukan bukan kolom pertama
	if(col < size-1){
		rightside = mat[row][col+1];	
	}
	
	// pengecekkan dilakukan jika elemen tidak di baris paling bawah atau tidak di kolom paling kanan
	if(row < size-1 && col < size-1){
		if(row == 0){
			// pengecekkan pada baris pertama
			// pengecekkan terhadap elemen atas (upside) tidak dilakukan
			if(elem == downside && elem == rightside){
				if(col > 0){
					// pengecekkan pada kolom setelah kolom pertama
					// pengecekkan akan dilanjutkan jika elemen disebelah kiri tidak sama dengan elemen yang sedang di-cek
					if(elem != leftside){
						for(int j = col+1; j < size; j++){
							if(mat[row][j] == elem){
								length++;
							}
							else {
								break;
							}
						}	
					}
				}
				else {
					// pengecekkan pada kolom pertama
					// pengecekkan terhadap elemen kiri (leftside) tidak dilakukan
					for(int j = col+1; j < size; j++){
						if(mat[row][j] == elem){
							length++;
						}
						else {
							break;
						}
					}
				}
			}
		}
		else {
			// pengecekkan pada baris setelah baris pertama
			// pengecekkan terhadap elemen atas (upside) dilakukan
			if(elem == downside && elem != upside && elem == rightside){
				if(col > 0){
					// pengecekkan pada kolom setelah kolom pertama
					// pengecekkan akan dilanjutkan jika elemen disebelah kiri tidak sama dengan elemen yang sedang di-cek
					if(elem != leftside){
						for(int j = col+1; j < size; j++){
							if(mat[row][j] == elem){
								length++;
							}
							else {
								break;
							}
						}	
					}
				}
				else {
					// pengecekkan pada kolom pertama
					// pengecekkan terhadap elemen kiri (leftside) tidak dilakukan
					for(int j = col+1; j < size; j++){
						if(mat[row][j] == elem){
							length++;
						}
						else {
							break;
						}
					}
				}
			}	
		}
	}

	return length;
}

// cek jika panjang vertikal sama dengan panjang horizontal (spaceSize)
// return true jika sama, false jika tidak
bool checkColumn(int **mat, int& row, int& col, int& spaceSize){
	bool check = true;
	for(int i = row; i < spaceSize; i++){
		if(mat[i][col] != mat[row][col]){
			check = false;
			break;
		}
	}
	return check;
}

// cari persegi terbesar dalam matriks
int searchMaxSpace(int **mat, int& size){
	int maxSpace = 0, spaceSize;
	for(int i = 0; i < size; i++){
		for(int j = 0; j < size; j++){

			bool isSquare = true;
			
			spaceSize = checkRow(mat, i, j, size);

			// pengecekkan dilakukan jika elemen adalah elemen pojok kiri atas persegi
			if(spaceSize > 1){

				// cek masing-masing kolom persegi
				// jika ada yang panjangnya tidak sama, maka isSquare menjadi false (bukan persegi)
				for(int k = j; k < spaceSize; k++){
					if(checkColumn(mat, i, k, spaceSize) == false){
						isSquare = false;
					}
				}
				// jika persegi dan ukurannya lebih besar dari max, maka melakukan swap
				if(isSquare == true){
					if(maxSpace < spaceSize){
						maxSpace = spaceSize;
					}
				}
			}
		}
	}

	return maxSpace*maxSpace;
}

int main(){

	ifstream infile;
	infile.open("contour.txt");

	if(infile.is_open()){
		cout << "File Loaded!" << endl;

		string sizeReader;
		getline(infile,sizeReader);
		int matSize = stoi(sizeReader);

		//Initialize matrix
		int **matrix = new int *[matSize];
		for(int i = 0; i < matSize; i++){
			matrix[i] = new int[matSize];
		}
		
		//read matrix's content
		fillMatrix(matrix, matSize, infile);

		cout << "Luas maksimum Krasti Krab yang dapat dibangun adalah " << searchMaxSpace(matrix, matSize) << endl;
	}

	infile.close();

	return 0;
}