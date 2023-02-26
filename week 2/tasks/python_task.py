# python task
#Given an array of integers, find the sum of its elements.
# 	For example, if the array ar = [1,2,3],
#                           Calculate 1+2+3 = 6, so return 6.

# pseudocode

# define a function that takes an argument that takes the inputs
# create a variable sum and set it to zero(0)
# create a loop to iterate through the array 
# add each element to the sum variable one at a time

# arr = [1,2,3]


def sumOfArray(arr):
    sum = 0
    for i in arr:
        sum = sum + i
    return(sum)    

print(sumOfArray([1,2,3]))

