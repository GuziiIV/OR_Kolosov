echo "Enter positive digit:"
read input_digit
if ((input_digit >= 0)); then
  echo "Countdown, please wait..."
  for((i=0; i<=input_digit; i++))
  do
    sleep 1
    echo $((input_digit - i))
  done
fi
