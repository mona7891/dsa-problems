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
	
	int max = INT_MIN;
	int secmax = INT_MIN;

	for(int i=0;i<n;i++)
	{
		if(arr[i] > max)
		{
		        secmax = max;
			max = arr[i];
		}
		else if(arr[i] < max && arr[i] > secmax)
		{
			secmax = arr[i];
		}
	}
	printf("Second Max Array element are : %d \n",secmax);

}
