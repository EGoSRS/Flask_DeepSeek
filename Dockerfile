FROM ubuntu:latest
LABEL authors="prsru"

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

#Копируем исходный код
COPY . .

EXPOSE 5000

CMD ["flask","run","--host=0.0.0.0"]

