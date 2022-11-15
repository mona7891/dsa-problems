#include<stdio.h>
#include<limits.h>
int main()
{
	int n;
	int arr[100];

	printf("Enter elements :");
	scanf("%d",&n);

	for(int i=0;i<n;i++)
	{
		scanf("%d",&arr[i]);
	}

	int min = INT_MAX;
	int secmin = INT_MAX;
	
	for(int i=0;i<n;i++)
	{
		if(arr[i] < min)
		{
			secmin = min;
			min = arr[i];
		}
		else if(arr[i] > min &&  arr[i] < secmin)
		{
			secmin = arr[i];
		}
	}
	printf("Second min Array Element are : %d \n",secmin);
}
