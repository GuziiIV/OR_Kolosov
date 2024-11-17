plus() {
  echo $(($1 + $2))
}

minus() {
  echo $(($1 - $2))
}

mult() {
  echo $(($1 * $2))
}

div() {
  if [ $2 == 0 ]; then
    echo "На ноль делить нельзя!"
  else
    echo $(($1 / $2))
  fi
}

num1=""
num2=""

# Запрашиваем первое число
until [[ "$num1" =~ ^-?[0-9]+$ ]]; do
  read -p "Введите первое число: " num1
  [[ ! "$num1" =~ ^-?[0-9]+$ ]] && echo "Введено не число"
done

# Запрашиваем второе число
until [[ "$num2" =~ ^-?[0-9]+$ ]]; do
  read -p "Введите второе число: " num2
  [[ ! "$num2" =~ ^-?[0-9]+$ ]] && echo "Введено не число"
done

echo "Введите номер операции (1 - сложение, 2 - вычитание, 3 - умножение, 4 - деление):"
read operation

if [ $operation == 1 ]; then
  plus $num1 $num2
elif [ $operation == 2 ]; then
  minus $num1 $num2
elif [ $operation == 3 ]; then
  mult $num1 $num2
elif [ $operation == 4 ]; then
  div $num1 $num2
fi


