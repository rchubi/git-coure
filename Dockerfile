FROM python:latest

RUN apt-get update && \
    apt-get install -y
RUN mkdir -p project/src/ && \
    useradd -m -s /bin/bash menti

ENV PATH="/home/menti/.local/bin:${PATH}"

USER menti

COPY /src/* /project/src
COPY requirements.txt /project/requirements.txt

WORKDIR /project/
RUN pip install --upgrade pip && \
    pip3 install -r requirements.txt

#COPY . /usr/src/app/
EXPOSE 8080
#CMD ["src/app.py"]
CMD ["python", "src/app.py"]