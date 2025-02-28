FROM python:3.9-alpine
RUN apk add build-base
COPY ./app /app
COPY ./requirements.txt /requirements.txt
RUN pip install --no-cache-dir -r /requirements.txt
CMD [ "python", "/app/main.py"]
