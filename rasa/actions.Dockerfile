FROM rasa/rasa-sdk:latest

USER root

COPY ./requirements.txt /

RUN pip install --no-cache-dir -r /requirements.txt

USER 1001

COPY ./endpoints.yml /app/
