echo "Введите путь к файлу:"
read filepath

echo "Введите слово, которое нужно заменить:"
read word1

echo "Введите слово, на которое нужно заменить:"
read word2

perl -pi -e "s/$word1/$word2/g" $filepath
