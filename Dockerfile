FROM python:latest

RUN apt-get update && \
    apt-get install -y && \
    pip install --upgrade pip
RUN mkdir -p project/src/

COPY /src/* /project/src
COPY requirements.txt /project/requirements.txt

WORKDIR /project/

RUN pip3 install -r requirements.txt

#COPY . /usr/src/app/
EXPOSE 8080
#CMD ["src/app.py"]
CMD ["python", "src/app.py"]