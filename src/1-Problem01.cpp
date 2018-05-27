#include <iostream>
#include <cstring>

using namespace std;
int main(){
	//Deklarasi Variabel
	string nama, nim;
	string jurusan;
	
	//Algoritma
	cout<< "Masukan Nama : ";
	cin>> nama ;
	cout<< "Masukan NIM : ";
	cin>> nim; //masukan nim diasumsikan selalu 8 digit
	
	jurusan ="???";
	if (nim[0]=='1') {
		if (nim[1]=='3'){
			if (nim[2]=='5')
				jurusan="Teknik Informatika";}
		else if (nim[1] =='8'){
			if (nim[2]=='0')
				jurusan = "Teknik Tenaga Listrik";
			else if (nim[2]=='1')
				jurusan = "Teknik Telekomunikasi";
			else if (nim[2]=='2')
				jurusan = "Sistem Teknologi dan Informasi";
			}
		}
	
	cout<< nama << " adalah mahasiswa "<< jurusan <<endl;

  return 0;
 }
