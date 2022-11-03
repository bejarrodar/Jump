#!/bin/bash

# read in the two values you'll use in your calculation
echo "Enter your first number:"
read num1

echo "Enter your second number:"
read num2 

# have the user select which operation to perform
select opt in "Add" "Subtract" "Multiply" "Divide"; do 

    case $opt in 
        Add)
            echo "$num1 + $num2 = $(($num1 + $num2))"
            break
            ;;
        Subtract)
            echo "$num1 - $num2 = $(($num1 - $num2))"
            break
            ;;
        Multiply)
            echo "$num1 x $num2 = $(($num1 * $num2))"
            break
            ;;
        Divide)
            echo "$num1 / $num2 = $(($num1 / $num2))"
            break 
            ;;
        # If one of the choices above isn't selected, prompt user to make a proper choice
        *)
            echo "Select only one of the options above (Number between 1-4)"
    esac

done 
