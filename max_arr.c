#include<stdio.h>
int main()
{
	int n,max;
	int arr[100];

	printf("Enter elements :");
	scanf("%d",&n);

	for(int i=0;i<n;i++)
	{
		scanf("%d",&arr[i]);
	}
	for(int i=0;i<n;i++)
	{
		if(arr[i] > max);
		{
			max = arr[i];
		}
	}
	printf("Max element of aaray are : %d ", max);

	printf("\n");
}
