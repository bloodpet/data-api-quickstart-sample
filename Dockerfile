from python:3.7-slim

WORKDIR /app

COPY Pipfile /app/

RUN pip install pipenv
RUN pipenv sync --dev
