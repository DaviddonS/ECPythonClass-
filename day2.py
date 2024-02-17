age1 = 25
age2 = 45
age3 = 60
report = 'Ade is {} years old, ola is {} years old and james is {} years old'
#print(report.format(age3,age2,age1))

#print(f'Ade is {age2} years old, ola is {age3} years old and james is {age1} years old')

word = 'python is fun'
#print(word.upper())
#print(word.lower())
#print(word.title())
#print(word.capitalize())
#print(word.split())

# DATA TYPE CONVERSION
num1 = int(14.5) # float can be converted to integer
#print(num1)
#print(float(num1)) # integer can be converted to float
#print(str(num1)) # integer can be converted to string

num2 = '45'
#print(float(num2))
# string cannot be converted to integer or float except the string value is either 
# a float or an integer value

# input function
#name = input('Please enter your name:')
#age = int(input('Please enter your age:'))

# operators
# Arithimetic operators [+, -, *. /, %, //. **]


num1 = int(input('Enter first number:'))
num2 = int(input('Enter second number:'))
print(f'{num1} + {num2} = {num1 + num2}')
print(f'{num1} - {num2} = {num1 - num2}')
print(f'{num1} * {num2} = {num1 * num2}')
print(f'{num1} / {num2} = {num1 / num2}')
print(f'{num1} % {num2} = {num1 % num2}')
print(f'{num1} // {num2} = {num1 // num2}')
print(f'{num1} ** {num2} = {num1 ** num2}')

# comparison operators [>, <, >=, <=, ==, !=]

num1 = int(input('Enter first number:'))
num2 = int(input('Enter second number:'))
print(f'{num1} > {num2} = {num1 > num2}')
print(f'{num1} < {num2} = {num1 < num2}')
print(f'{num1} >= {num2} = {num1 >= num2}')
print(f'{num1} <= {num2} = {num1 <= num2}')
print(f'{num1} == {num2} = {num1 == num2}')
print(f'{num1} != {num2} = {num1 != num2}')

# Logical Operators [and, or, not]
print(num1 > num2 and num1 != num2)
print(num1 > num2 or num1 != num2)
print(not num1)

# Membership Operators
print('is' in word)
print('Is' not in word)


# Identity Operators
print(num1 is num2)
print(num1 is not num2)























