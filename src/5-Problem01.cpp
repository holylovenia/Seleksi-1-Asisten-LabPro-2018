#include <iostream>
#include <fstream>

using namespace std;

int main(){
	/* Kamus */
	int N;
	int matriks[501][501];
	ifstream file;
	bool bysimmetric;
	
	/* Algoritma */
	file.open("matriks.txt");
	if(file.is_open()){
		cout<<"matriks loaded!"<<endl;
		file >> N;
		for(int i=0;i<N;++i){
			for(int j=0;j<N;++j){
				file >> matriks[i][j];
			}
		}
		bysimmetric = true;
		for(int i=0;i<N/2;++i){
			for(int j=0;j<N/2;++j){
				if(matriks[i][j] != matriks[N-1-i][N-1-j]){
					bysimmetric = false;
				}
			}
		}
		for(int i=0;i<N/2;++i){
			for(int j=0;j<N/2;++j){
				if(matriks[N-1-i][j] != matriks[i][N-1-j]){
					bysimmetric = false;
				}
			}
		}
		if(bysimmetric){
			cout<<"Yes"<<endl;
		}
		else{
			cout<<"No"<<endl;
		}
	}
	else{
		cout<<"matriks not loaded!"<<endl;
	}
	file.close();
	return 0;
}