FROM python:alpine

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENTRYPOINT [ "python3", "./main.py"]
CMD [ "--host", "0.0.0.0", "--port", "8080"]