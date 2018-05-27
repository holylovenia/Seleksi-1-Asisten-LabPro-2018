#include <iostream>

using namespace std;
int main(){
	int pangkat;

	cout<<"Masukkan pangkat paling besar : ";
	cin>> pangkat;
	
	double koef[pangkat];
	double hasil[pangkat+1];
	
	for (int i =pangkat; i>=0; i--){
		cout<<"Masukan koefisien x^"<<i<<" : ";
		cin>> koef[i];
	}
	
	for (int i = 1; i<= pangkat+1; i++){
		hasil[i]= koef[i-1]/i;
	}
	
	cout<<"Maka hasil integralnya adalah ";
	
	for (int i=pangkat+1; i>=1;  i--){
		cout<< hasil[i]<<"x^"<<i<<" + ";
	}
	cout <<"c"<<endl;
	
	return 0;
}
