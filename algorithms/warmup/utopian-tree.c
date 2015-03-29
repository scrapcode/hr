#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>

int main() {
    int totalTestCases;
    int testCase[9];
    
    // Get total test cases
    scanf("%d", &totalTestCases);
    
    // Iterate for test case cycles
    for(int i = 0; i < totalTestCases; i++) {
        scanf("%d", &testCase[i]);
    }
    
    // Iterate through each test case
    for(int x = 0; x < totalTestCases; x++) {
        int state = 0;
        int sapHeight = 1; // in meters
        
        // For each cycle
        for(int y = 0; y < testCase[x]; y++) {
            if( state < 1 ) {
                sapHeight *= 2;
                state = 1;
            } else {
                sapHeight += 1;
                state = 0;
            }
        }
        
        // Output the growth
        printf("%d\n", sapHeight);
    }
    
    return 0;
}