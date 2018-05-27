#include <bits/stdc++.h>

using namespace std;

int main()
{
	ifstream readfile;
	int n,comp=0,sum,d1=0,d2=0;
	bool magic=true;
	readfile.open("matriks.txt");
	if(readfile.is_open())
	{
		readfile>>n;
		vector <vector <long long> > matrix(n, vector<long long>(n));
		//pembacaan elemen matriks dan pengecekan kesamaan jumlah elemen per baris
		for(int i=0; i<n; i++)
		{
			sum=0;
			for(int j=0; j<n; j++)
			{
				readfile>>matrix[i][j];
				if(i==0) comp+=matrix[i][j];
				else sum+=matrix[i][j];
			}
			if(i!=0 && sum!=comp) magic=false;
		}
		//pengecekan kesamaan jumlah elemen pada kedua diagonal utama
		if(magic)
		{
			for(int i=0; i<n; i++)
			{
				d1+=matrix[i][i];
				d2+=matrix[i][n-1-i];
			}
			if(comp!=d1 || comp!=d2)
				magic=false;
		}
		//pengecekan kesamaan jumlah elemen per kolom
		int i=0;
		while(magic && i<n)
		{
			sum=0;
			for(int j=0; j<n; j++)
			{
				sum+=matrix[j][i];
			}
			if(comp!=sum)
				magic=false;
			else i++;
		}
		cout<<"matriks loaded!\n";
		if(magic) cout<<"Yes\n";
		else cout<<"No\n";
		readfile.close();
	}
	return 0;
}
