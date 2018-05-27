#include <bits/stdc++.h>

using namespace std;
//mencetak sema bilangan prima diantara a dan b
void primebetween(int a, int b)
{
	bool memo[b+1];
	memo[2]=1;
	for(int i=3; i<=b; i++)
	{
		memo[i]=0;
		int j=2;
		bool prima=true;
		while(prima && (j<=sqrt(i)))
		{
			if(i%j==0)
				prima=false;
			else j++;
		}
		if(prima) memo[i]=1;
	}
	for(int i=a; i<=b; i++)
		if(memo[i]==1 && i>1) cout<<i<<"\n";
}

int main()
{
	int a,b;
	cout<<"Masukan nilai A :";
	cin>>a;
	cout<<"Masukan nilai B :";
	cin>>b;
	cout<<"Bilangan prima diantara "<<a<<" sampai "<<b<<" adalah\n";
	primebetween(a,b);
	return 0;
}
