#include <bits/stdc++.h>

using namespace std;
//menghasilkan true jika kekayaan bukan merupakan elemen pada array kekayaan_adolf
bool isnotexist(string kekayaan, string kekayaan_adolf[], int n)
{
	bool notexist=true;
	int i=0;
	while(notexist && i<n)
	{
		if(kekayaan_adolf[i]==kekayaan)
			notexist=false;
		else i++;
	}
	return notexist;
}

int main()
{
	int n,m;
	bool prov=false;
	string kekayaan_adolf[100],kekayaan_tetangga[100];
	cout<<"Masukkan jumlah kekayaan negara Adolf : ";
	cin>>n;
	cout<<"Masukkan kekayaan negara Adolf :\n";
	for(int i=0; i<n; i++)
		cin>>kekayaan_adolf[i];
	cout<<"Masukkan jumlah kekayaan negara tetangga : ";
	cin>>m;
	cout<<"Masukkan kekayaan negara tetangga :\n";
	for(int i=0; i<m; i++)
		cin>>kekayaan_tetangga[i];
	for(int i=0; i<m; i++)
	{
		bool temp=isnotexist(kekayaan_tetangga[i],kekayaan_adolf,n);
		if(temp && !prov)
		{
			prov=true;
			cout<<"Negara adolf tidak memiliki :\n"<<kekayaan_tetangga[i]<<"\n";
		}
		else if(temp)
			cout<<kekayaan_tetangga[i]<<"\n";
	}
	if(!prov) cout<<"Negara adolf memiliki segalanya\n";
	return 0;
}
