from python:3.7-slim

WORKDIR /app
RUN pip install pipenv

COPY Pipfile /app/
COPY Pipfile.lock /app/
COPY setup.py /app/

RUN pipenv sync --dev

COPY secrets.json /app/
