#!/bin/bash

rsync -avz -e 'ssh -p 2222' --exclude '*.txt' --exclude 'dir1' /Users/maksimkolosov/OR_Kolosov/Lab_9_Bash root@localhost:/Lab_9_Bash