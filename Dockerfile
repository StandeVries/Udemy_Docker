# operating system
FROM ubuntu:latest

# add appendencies
RUN apt-get update
RUN apt-get install -y python
RUN apt-get install -y python-pip

# add python dependencies using pip
RUN pip install flask
RUN pip install flask-mysql

COPY . /app
WORKDIR /app
ENTRYPOINT ["python"]
CMD ["app.py"]

