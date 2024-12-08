#!/bin/bash

ssh -p 2222 root@localhost "df | awk 'NR==2 {print $5}'"

#echo "E-mail body" | mail -s "E-mail title" maksim-kolosov@yandex.ru