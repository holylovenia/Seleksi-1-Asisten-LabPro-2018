#include <iostream>

using namespace std;

int main(){
	/* Kamus */
	int banyak_warna, banyak_barang;
	string warna[10002], barang[10002];
	
	/* Algoritma */
	cout<<"Masukkan jumlah warna : ";
	cin>>banyak_warna;
	cout<<"Masukkan nama warna :"<<endl;
	for(int i=0;i<banyak_warna;++i){
		cin>>warna[i];
	}
	cout<<"Masukkan jumlah barang : ";
	cin>>banyak_barang;
	cout<<"Masukkan nama barang :"<<endl;
	for(int i=0;i<banyak_barang;++i){
		cin>>barang[i];
	}
	
	cout<<"Ide barang selanjutnya :"<<endl;
	for(int i=0;i<banyak_barang;++i){
		for(int j=0;j<banyak_warna;++j){
			cout<<barang[i]<<" "<<warna[j]<<endl;
		}
	}
	cout<<"Terdapat "<<banyak_barang*banyak_warna<<" ide yang mungkin"<<endl;
	return 0;
}