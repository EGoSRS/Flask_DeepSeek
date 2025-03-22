FROM python:3.9-slim

WORKDIR /app
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .

# Указываем Flask, где искать приложение
ENV FLASK_APP=my_flask.py
CMD ["flask", "run", "--host=0.0.0.0"]