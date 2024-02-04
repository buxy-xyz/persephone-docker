docker build -t persephone .
docker run --name persephone -d -p 35000:35000 --restart unless-stopped -e TZ=Europe/Berlin persephone
