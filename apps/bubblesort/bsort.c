#include <stdio.h>
#include <stdlib.h>
#include <gpio.h>
#include <iosim.h>

//---------------------------------------------------------
#define MY_ID 123456789*10 
#define MY_N 10 
#define vec (*(volatile unsigned int (*)[MY_N])(0x00002000))
#define my_index_addr 0x00001ffc
#define done_flag_addr 0xffffffff
 
//---------------------------------------------------------

int main(void) { 
  
  int n = MY_N ;

  for (int i = 0 ; i < n-1 ; i++)
    for (int j = 0 ; j < n-i-1 ; j++) { 		
      if (vec[j] > vec[j+1]) {
		// Swapping
        unsigned int swap = vec[j];
        vec[j]   = vec[j+1];
        vec[j+1] = swap;
      }
  }
 *((volatile unsigned int *) my_index_addr) = 99 ;
 *((volatile unsigned char *) done_flag_addr) = 1 ;
 return 0; 

}
