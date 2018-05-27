#include <bits/stdc++.h>

using namespace std;
//menghasilkan nilai C(n,r)
long kombinatorik(int n, int r)
{
	long result=1;
	if(r==0 || n==r) {}
	else if(r>=n/2)
	{
		for(int i=r+1; i<=n; i++)
		{
			result*=i;
			result/=i-r;
		}
	}
	else
	{
		for(int i=n-r+1; i<=n; i++)
		{
			result*=i;
			result/=i-n+r;
		}
	}
	return result;
}

int main()
{
	int n;
	cout<<"Masukan jumlah baris: ";
	cin>>n;
	for(int i=0; i<n; i++)
	{
		for(int j=0; j<=i; j++)
		{
			if(j==0) cout<<kombinatorik(i, j);
			else cout<<" "<<kombinatorik(i, j);
		}
		cout<<"\n";
	}
	return 0;
}
