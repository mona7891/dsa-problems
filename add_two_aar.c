#include<stdio.h>
int main()
{
	int arr1[10];
	int arr2[10];
	int arr3[10];
	int n,i,sum=0;

	printf("Enter how many array :");
	scanf("%d",&n);

	printf("Enter %d elemets for Array 1 : ");
	for(int i=0;i<n;i++)
	
		scanf("%d",&arr1[i]);

	
	printf("Enter the %d elements for array 2 : ");
	for(int i=0;i<n;i++)
	
		scanf("%d",&arr2[i]);
	
	for(int i=0;i<n;i++)
	
		arr3[i] = arr1[i] + arr2[i];
	
	printf("Sum of two array are : %d \n",sum);
	for(int i=0;i<n;i++)
	
		printf("%d\n",arr3[i]);
	
		return 0;
}
