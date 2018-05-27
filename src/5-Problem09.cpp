#include <iostream>
#include <cstring>
#include <fstream>

using namespace std;

bool cekMatriks(int n, char** &matriks){
	for(int i=1; i<=n;i++)
		for (int j=1; j<=n; j++)
			if (matriks[i][j] != 'U')
				return false;
				
	return true;
	
}

int main(){
	
	int n;
	int hari =0;
	ifstream inputs;
	inputs.open("city.txt");
	
	inputs >> n;
	cout<<n<<endl;
	
	char** rumah;
	rumah = new char*[n];
	for (int i=0;i<=n; i++){
		rumah[i] = new char[n];
	}
	
	for(int i=1; i<=n;i++){
		for (int j=1; j<=n; j++){
			inputs>> rumah[i][j];
			//cout<< rumah[i][j] <<" ";
		}
		//cout<<endl;
	}
	cout<<"matriks loaded!"<<endl;
	
	if (cekMatriks(n,rumah))
		cout<< "benar";
	else
		cout<<"salah";
	//for (int i=1; i<= n; i++){
		//for (int j=1; j<=n;j++){
			//if (rumah[i][j] == 'U'){
				//if ((i==1)&&(j==1)){
					//if (rumah[i+1][j]=='U')||(rumah[i+1][j+1]=='U'
						//rumah[i-j][j]='U';
					//if (rumah[
				
					
	
	
	inputs.close();
	
	cout<<"Lama waktu apocalypse adalah "<<hari<<" hari"<<endl;
	
	return 0;
}
