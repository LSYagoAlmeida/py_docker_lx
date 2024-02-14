# syntax=docker/dockerfile:1

From python:3.8-slim-buster

WORKDIR /app
ENV FLASK_APP run.py

COPY run.py /
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8000

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port 8000"]
#CMD flask run --host 0.0.0.0 --port 8000