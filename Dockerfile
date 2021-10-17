FROM python:3.9.2-slim-buster
RUN mkdir ./app && chmod 777 ./app
WORKDIR ./app
ENV DEBIAN_FRONTEND=noninteractive
RUN apt -qq update && apt -qq install -y git python3 ffmpeg wget python3-dev
RUN pip3 install --upgrade pip setuptools
COPY . .
RUN pip3 install -r requirements.txt
CMD ["python3","start.py"]
