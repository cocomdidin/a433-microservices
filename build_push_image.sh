#!/bin/bash

# Buat image
docker build -t item-app:v1 .

# Menampilkan daftar images
docker images

# Mengubah nama image
docker tag item-app:v1 cocomdidin/item-app:v1

# Login ke Docker Hub
echo $PASSWORD_DOCKER_HUB | docker login -u cocomdidin --password-stdin

# Unggah image
docker push cocomdidin/item-app:v1
