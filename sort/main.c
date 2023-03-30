#include "main.h"
#define LEN 100
int main()
{
int a[LEN];
srand(time(NULL));
for(int i=0;i<LEN;i++)
{	a[i]=rand()%200;
	cout<<a[i]<<"  ";
}

//bubble(a,LEN-1);
//qsort(a,0,LEN-1);
insertsort(a,LEN);
//select(a,LEN);
//shell(a,LEN);
cout<<endl;
for(int i=0;i<LEN;i++)
{	
	cout<<a[i]<<"  ";
}
cout<<endl;
}
