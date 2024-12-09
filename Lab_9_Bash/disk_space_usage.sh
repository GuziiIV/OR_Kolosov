#!/bin/bash

#ssh -p 2222 root@localhost "df | awk 'NR==2 {print $5}'"

df_str="$(ssh -p 2222 root@localhost "df | awk 'NR==2 {print $5}'")"
part_str=${df_str:43:8}
digit=$(echo $part_str | tr -dc '0-9')

if [ $digit -gt 2 ]; then
    echo "На диске занято более 80%!"
    echo "More than 80% on disk!" | mail -s "Small place" maksim-kolosov@yandex.ru
else
    echo "На диске занято не более 80%!"
fi