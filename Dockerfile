FROM ubuntu:latest

COPY requirements.txt requirements.txt
RUN apt-get update && apt-get install -y \
        python3 \
        python3-pip && \
    pip3 install -r requirements.txt

COPY . .

ENTRYPOINT [ "python3", "./main.py"]
CMD [ "--host", "0.0.0.0", "--port", "8080"]