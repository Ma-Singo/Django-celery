FROM python:3.12-alpine

WORKDIR /usr/src/app

# prevent Python from writing .pyc file
ENV PYTHONDONTWRITEBYTECODE 1

# ensure Python output is directed to the terminal
ENV PYTHONBUFFERED 1

RUN pip install --upgrade pip
COPY ./requirements.txt /usr/src/app/requirements.txt
RUN pip install -r requirements.txt

COPY ./entrypoint.sh /usr/src/app/entrypoint.sh

COPY . /usr/src/app

ENTRYPOINT ["/usr/src/app/entrypoint.sh"]

