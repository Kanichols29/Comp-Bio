# Practical Week 5 Final Problems

## 4.1 Baking a Cake

START

Gather flour, eggs, milk, butter, and sugar.

Mix flour, eggs, milk, butter, and sugar together to make the batter.

Put the batter into an oven pan.

Bake the cake at 400°F for 20 minutes.

Check the cake by inserting a knife.

WHILE batter sticks to the knife:
    Bake the cake for more time.
    Check the cake again with a knife.

IF the knife comes out clean:
    Remove the cake from the oven.

END 

## 4.2 Fizz Buzz

### 1. Pseudocode

START

Begin counting at 1.

WHILE the number is less than or equal to 100:

    IF the number is divisible by both 3 and 5:
        Print "fizzbuzz".

    ELSE IF the number is divisible by 3:
        Print "fizz".

    ELSE IF the number is divisible by 5:
        Print "buzz".

    ELSE:
        Print the number.

    Increase the number by 1.

END

### 2. Python Program

The Python program for Fizz Buzz is saved as `fizzbuzz.py`.


## 4.3 GC Content from FASTA

The Python program used to calculate the GC content of each sequence is saved as `gc_content.py`. The sequence names and calculated GC contents are written to `gc_content.txt`, separated by tabs.