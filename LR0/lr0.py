print ('hello word')
def mu_funk(x):
    print(x+2)
mu_funk(3)
def fib(n):
    if n == 1 or n == 2:
        return 1
    return fib(n-1) + fib(n-2)
print('num = ',{fib(4)})
