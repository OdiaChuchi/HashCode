def testcase():
    s = str(input())
    n = len(s)
    if n <= 10:
        print(s)
        return
    print(s[0] + str(n-2) + s[n-1])
 
if __name__ == '__main__':
    T = int(input())
    for _ in range(T):
        testcase()
