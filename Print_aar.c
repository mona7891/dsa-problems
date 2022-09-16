#include <stdio.h>
int main()
{
  int n;
  int arr[n];

  
  printf("Enter array :");
  scanf("%d",&n);

  for(int i=0;i<n;i++)
  {
    scanf("%d", &arr[i]);
  }
  
  
  printf("The Array elements are :");
  for(int i=0; i<n; i++) {
     printf("%d ", arr[i]);
     
  }
  printf("\n");
  return 0;
}
