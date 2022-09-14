// Factorial program //

#include<stdio.h>
int main()
	{
		int i,fact=1,no;
		
		printf("Enter NO : ");
		scanf("%d",&no);
		for(i=1;i<=no;i++)
		{
			fact = fact*i;
		}
		printf("Factorial %d is : %d \n",no,fact);

		return 0;
	}

