import re

A = '/?a=1&a=2&b=3'

result = re.findall(r'\w+=[^&]+', A)

for i in result:
    print(i)
