FROM python:3.10.9-slim as base

ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
ENV TZ Europe/Kiev

ENV PYTHONIOENCODING UTF-8
ENV PYTHONPATH /app

WORKDIR /app
COPY config/requirements.txt .

RUN pip install -r requirements.txt


# --- DEV
FROM base AS dev

ENV PYTHONDONTWRITEBYTECODE 1

COPY config/requirements-dev.txt .
RUN pip install -r requirements-dev.txt