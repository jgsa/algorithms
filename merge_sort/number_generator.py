import random
import sys

# -2147483646, 2147483647
for _ in range(int(sys.argv[1])):
    print(random.randint(0, 100000), end=' ')
print()