# Инициализируем переменные
num1=""
num2=""

# Запрашиваем первое число
until [[ "$num1" =~ ^-?[0-9]+$ ]]; do
  read -p "Enter the first number: " num1
  [[ ! "$num1" =~ ^-?[0-9]+$ ]] && echo "Please enter a valid integer"
done

# Запрашиваем второе число
until [[ "$num2" =~ ^-?[0-9]+$ ]]; do
  read -p "Enter the second number: " num2
  [[ ! "$num2" =~ ^-?[0-9]+$ ]] && echo "Please enter a valid integer"
done

# Выводим сумму
sum=$((num1 + num2))
echo "Sum of numbers: $sum"