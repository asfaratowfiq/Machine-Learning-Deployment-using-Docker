FROM python:3.8-slim

COPY . /usr/ML/app

EXPOSE 8000

WORKDIR /usr/ML/app

RUN pip install --no-cache-dir -r requirements.txt

CMD gunicorn --bind 0.0.0.0:8000 --workers 1 flask_api:app
