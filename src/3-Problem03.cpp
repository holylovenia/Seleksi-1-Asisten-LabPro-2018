#include <iostream>

using namespace std;

bool komposit(int nilai){
	/* Algoritma */
	for(int pem=2;pem<nilai;++pem){
		if(nilai%pem==0){
			return true;
		}
	}
	return false;
}

int main(){
	/* Kamus */
	int A, B, tmp;
	
	/* Algoritma */
	cout<<"Masukkan nilai A : ";
	cin>>A;
	cout<<"Masukkan nilai B : ";
	cin>>B;
	if(A>B){   /* Jika nilai A lebih besar dari B, ditukar nilainya */
		tmp = A;
		A = B;
		B = tmp;
	}
	
	cout<<"Bilangan komposit diantara "<<A<<" sampai "<<B<<" adalah:"<<endl;
	for(int nilai=A+1;nilai<B;++nilai){
		if(komposit(nilai)){
			cout<<nilai<<endl;
		}
	}
	return 0;
}