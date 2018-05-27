#include <iostream>

using namespace std;

bool IsMenanjak(int n, int m){
		if ((n/10) ==0) {
			return true;
		}else{
			if ((n/m) < 10){
				if (n%10 < ((n/10)%10)){
					return true;
				}else{
					return false;
				}
			}else{
				
				if (((n/m)%10)<((n/(m*10))%10)){
					return IsMenanjak(n, m*10);
				}else{
					return false;
				}
			}	
		}
	}


int main(){

	int n;

	cout<<"Masukan N: ";
	cin>> n;

	cout<<"Bilangan "<<n;
	if (IsMenanjak(n,10)){
		cout<<" adalah bilangan menanjak."<<endl;
	}else{
		cout<<" bukan bilangan menanjak."<<endl;
	}
	
	return 0;
}
