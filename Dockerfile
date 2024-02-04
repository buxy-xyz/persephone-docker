# start by pulling the python image
FROM python:3.8

# switch working directory
WORKDIR /app

# install ffmpeg and ffprobe
RUN apt-get update && apt-get install -y ffmpeg

# copy the requirements file into the image
COPY . /app

# Run chmod +x on the scripts and execute them
RUN chmod +x /app/docker_persephone_install.venv.sh && \
    /app/docker_persephone_install.venv.sh

# Start persephone_wsgi.py
CMD ["/bin/bash", "-c", "source ./environment/bin/activate && python3 persephone_wsgi.py"]
