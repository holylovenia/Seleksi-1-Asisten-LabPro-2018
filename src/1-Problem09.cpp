#include <iostream>

using namespace std;
//menghasilkan nilai ratio satuan suhu terhadap kedua satuan lainnya
int ratio(char satuan)
{
	if(satuan=='C') return 5;
	else if(satuan=='R') return 4;
	else return 9;
}

//menghasilkan nilai konversi suhu dari satuan_awal ke satuan_akhir
double konversi(double suhu_awal, char satuan_awal, char satuan_akhir)
{
	int ratio_awal,ratio_akhir;
	ratio_awal=ratio(satuan_awal);
	ratio_akhir=ratio(satuan_akhir);
	if(ratio_awal==9) suhu_awal-=32;
	if(ratio_akhir==9) return (suhu_awal/ratio_awal*ratio_akhir+32);
	else return (suhu_awal/ratio_awal*ratio_akhir);
}

int main()
{
	char satuan_awal,satuan_akhir;
	double suhu_awal;
	cout<<"Masukan satuan suhu termometer: ";
	cin>>satuan_awal;
	cout<<"Masukan besar suhu: ";
	cin>>suhu_awal;
	cout<<"Masukan satuan yang ingin diketahui: ";
	cin>>satuan_akhir;
	cout<<"Besar suhu dalam "<<satuan_akhir<<": "<<konversi(suhu_awal,satuan_awal,satuan_akhir);
}
