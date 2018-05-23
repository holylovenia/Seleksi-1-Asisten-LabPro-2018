#include <iostream>
using namespace std;

char convertNilai(int nilai){
	if(nilai > 80 && nilai <= 100){
		return 'A';
	}
	else if(nilai > 60 && nilai <= 80){
		return 'B';
	}
	else if(nilai > 40 && nilai <= 60){
		return 'C';
	}
	else if(nilai > 20 && nilai <= 40){
		return 'D';
	}
	else if(nilai >= 0 && nilai <= 20){
		return 'E';
	}
}

int main() {

	char nama[64]; int nilai;

	cout << "Masukkan Nama  : "; cin >> nama;
	
	do{
		cout << "Masukkan nilai : "; cin >> nilai;	
	} while(nilai < 0 || nilai > 100);
	

	cout << nama << " mendapat nilai " << convertNilai(nilai) << endl;

}