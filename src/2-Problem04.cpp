#include <iostream>

using namespace std;

int main(){
	/* Kamus */
	int banyak_mahasiswa, nilai_mahasiswa;
	int banyak_lulus, banyak_tidak_lulus;
	
	/* Algoritma */
	banyak_lulus = 0;
	banyak_tidak_lulus = 0;
	cout<<"Banyak mahasiswa :";
	cin>>banyak_mahasiswa;
	
	for(int i=1;i<=banyak_mahasiswa;++i){
		cout<<"Nilai anak ke-"<<i<<" :";
		cin>>nilai_mahasiswa;
		if(nilai_mahasiswa>=60){
			banyak_lulus++;
		}
		else{
			banyak_tidak_lulus++;
		}
	}
	
	cout<<"Total mahasiswa yang lulus = "<<banyak_lulus<<endl;
	cout<<"Total mahasiswa yang tidak lulus = "<<banyak_tidak_lulus<<endl;
	return 0;
}