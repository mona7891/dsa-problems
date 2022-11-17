#include<stdio.h>
int main()
{
	char str[100],ch;
	int count = 0;

	printf("Enter the string : ");
	gets(str);

	printf("Enter a character to find its frequency :");
	scanf("%c",&ch);

	for(int i=0;str[i]!='\0';i++)
	{
		if(ch == str[i])
		++count;
	}
	printf("Freq of character %c : %d \n",ch,count);

	return 0;
	
}
