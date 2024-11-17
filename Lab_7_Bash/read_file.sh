echo "Введите путь к файлу:"
read filepath

# Read the file line by line
while read -r line
do
  echo "$line"
done < "$filepath"
