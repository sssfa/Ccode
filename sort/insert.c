int insertsort(int *a,int len)
{
	int i;
	for(i=1;i<len;i++)
	{
		int j=0;
		while(a[j]<a[i]&&j<i) j++;
		if(j<i)
		{
			int t=a[i];
			for(int k=i;k>j;k--)
				a[k]=a[k-1];
			a[j]=t;
		}
	}
	return 0;
}
