echo "Введите директорию 1:"
read dir1

echo "Введите директорию 2:"
read dir2

date_prefix=$(date "+%Y_%m_%d_")

for file in "$dir1"/*; do
  source_file_name=$(basename "$file")
  source_file_path="$dir1/$source_file_name"
  dest_file_name="$date_prefix$source_file_name"
  dest_file_path="$dir2/$dest_file_name"
  cp $source_file_path $dest_file_path
done