#include <iostream>

using namespace std;

int main(){
	/* Kamus */
	string nama;
	int nilai;
	
	/* Algoritma */
	cout<<"Masukan Nama : ";
	cin>>nama;
	cout<<"Masukan Nilai : ";
	cin>>nilai;
	
	cout<<nama<<" mendapat nilai ";
	if(nilai >= 81){		/* nilai >= 81 dan nilai <= 100 */
		cout<<"A";
	}
	else if(nilai >= 61){	/* nilai >= 61 dan nilai <= 80 */
		cout<<"B";
	}
	else if(nilai >= 41){	/* nilai >= 41 dan nilai <= 60 */
		cout<<"C";
	}
	else if(nilai >= 21){	/* nilai >= 21 dan nilai <= 40 */
		cout<<"D";
	}
	else{					/* nilai >= 0 dan nilai <= 20 */
		cout<<"E";
	}
	cout<<endl;
	return 0;
}