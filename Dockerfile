FROM python:3.6

COPY . /usr/src/app/
WORKDIR /usr/src/app

RUN pip install --upgrade pip && \
    mkdir -p /usr/src/app/ && \
    pip install --no-cache-dir -r requirements.txt


EXPOSE 8080

CMD ["python", "src/app.py"]