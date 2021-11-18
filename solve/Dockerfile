FROM python:3.9-slim

ENV PYTHONUNBUFFERED 1

RUN apt-get update \
    && apt-get install -y \
    build-essential \
    python3-dev \
    libblas3 \
    liblapack3 \
    liblapack-dev \
    libblas-dev \
    gfortran \
    --no-install-recommends \
    && rm -rf /var/lib/apt/lists/* /usr/share/doc /usr/share/man \
    && apt-get clean

WORKDIR /usr/src/app

COPY poetry.lock pyproject.toml /usr/src/app/

RUN pip3 install poetry

RUN poetry install
