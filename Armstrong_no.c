#include<stdio.h>
int main()
{
	int n,r,temp;
	int sum = 0;

	printf("Enter the No :");
	scanf("%d",&n);

	 temp = n;

	while(n>0)
	{
		r = n%10;
		sum = sum+(r*r*r);

		n = n/10;
	}
	if(temp == sum)
	{
		printf("Armstrong No \n");
	}
	else
	{
		printf("Not Armstrong No \n");
	}
	return 0;
}
