#include <iostream>
#include <cstring>

using namespace std;
int main(){
	int n,hasil;

	cout<<"Masukan jumlah pemotongan : ";
	cin>> n;
	
	hasil=1;
	for (int i=1; i<=n;i++){
		hasil= hasil + i;
	}
	
	cout<<"Potongan maksimal yang didapat adalah "<< hasil<< endl;
	return 0;
}
