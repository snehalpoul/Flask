FROM ubuntu:18.04


RUN apt-get update -y && \
    apt-get install -y python-pip python-dev



WORKDIR /app

RUN pip install flask

COPY . /app

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]

