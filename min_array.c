#include<stdio.h>
int main()
{
	int n,min;
	int arr[100];

	printf("Enter the elements :");
	scanf("%d",&n);

	for(int i=0;i<n;i++)
	{
		scanf("%d",&arr[i]);
	}
	for(int i=0;i<n;i++)
	{
		if(arr[i] < min)
		{
			min = arr[i];
		}
	}
	printf("Min of Array are : %d \n",min);
}
