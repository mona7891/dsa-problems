#include<stdio.h>
#include<string.h>
int main()
{
	char str[100];
	int i;
	
	printf("Enter the string : ");
	scanf("%s",str);

	for(i=0;str[i]!='\0'; i++)
	
		printf("Length of str is  : %d \n",i);
		
}	
