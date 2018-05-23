#include <iostream>
using namespace std;

int main(){

	int N, numPass = 0;

	do{
		cout << "Banyak mahasiswa : "; cin >> N;	
	} while(N < 0);
	
	for(int i = 0 ; i < N; i++){
		
		int nilai;
		
		do{
			cout << "Nilai anak ke-" << i+1 << " : "; cin >> nilai;	
		} while(nilai < 0 || nilai > 100);
		

		if(nilai >= 60 && nilai <= 100){
			numPass++;
		}
	}

	cout << "Total mahasiswa yang lulus adalah " << numPass << endl;
	cout << "Total mahasiswa yang tidak lulus adalah " << N-numPass << endl;

	return 0;
}