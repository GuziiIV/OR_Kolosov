#!/bin/bash

SERVER="root@localhost"
PORT="2222"
DIR="/folder1"
ARCHIVE="myarchive.tar.gz"

# Создание архива на удаленной машине:
ssh -p $PORT $SERVER "tar -czf /$ARCHIVE $DIR"

LOCAL_DIR="ssh"

# Копирование архива на локалку
scp -i ~/.ssh/docker_ssh_key -P $PORT $SERVER:/$ARCHIVE ~/$LOCAL_DIR

# Распаковать tar-архив
tar -xvf $LOCAL_DIR/$ARCHIVE