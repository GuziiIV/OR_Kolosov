echo "Enter digit":
read input_digit

if ((input_digit > 0))
  then echo "Digit is positive"
elif ((input_digit < 0))
  then echo "Digit is negative"
else
  echo "Digit is zero"
fi
