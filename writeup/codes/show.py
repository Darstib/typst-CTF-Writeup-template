""" 这里的代码仅作演示，与实际的ctf题没有任何关系。 """


def fibonacci(n):
    if n <= 1:
        return n
    return fibonacci(n - 1) + fibonacci(n - 2)


n = int(input("Enter the number of terms: "))
print("Fibonacci Series:", end=" ")
for i in range(n):
    print(fibonacci(i), end=" ")
print()
