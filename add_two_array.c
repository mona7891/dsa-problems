#include<stdio.h>
int main()
	{
		int arr[100];
		int n,i,sum = 0;

		printf("Enter how many array : ");
		scanf("%d",&n);

		printf ("Enter array elements :");
		for(int i=0;i<n;i++)
		{
			scanf("%d",&arr[i]);
		}
		for(i=0;i<n;i++)

			sum = sum + arr[i];

		printf("Sum of the aaray = %d \n",sum);

		return 0;

	}
