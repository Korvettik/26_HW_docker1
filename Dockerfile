FROM python:3.9

ENV HOME /app
WORKDIR HOME

COPY requirements.txt .
RUN python3 -m pip install -r requirements.txt

COPY main.py .
# COPY . . -------- в таком случае копируется все в докер, кроме файлов описанных .dockerignor
COPY entrypoint.sh .

CMD ["sh", "entrypoint.sh"]

