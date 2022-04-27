#include <stdio.h>
#include <string.h>
#include <stdlib.h>

void testcase(){
    int n;
    scanf("%d", &n);
    int ans = 0;
    while(n--){
        int a[3];
        int cnt = 0;
        scanf("%d %d %d", &a[0], &a[1], &a[2]);
        for(int i=0; i<3; i++) if(a[i] == 1) cnt += 1;
        if(cnt >= 2) ans++;
    }
    printf("%d\n", ans);
}

int main(){
    int t = 1;
    // scanf("%d", &t);
    while(t--){
        testcase();
    }
    return 0;
}