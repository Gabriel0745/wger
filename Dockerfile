FROM python:3.11-slim

WORKDIR /app

COPY . .

RUN pip install --upgrade pip
RUN pip install django gunicorn psycopg2-binary djangorestframework

EXPOSE 8000

CMD ["gunicorn", "wger.wsgi:application", "--bind", "0.0.0.0:8000"]
