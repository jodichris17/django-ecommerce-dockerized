# FROM python:3
# ENV PYTHONUNBUFFERED=1
# WORKDIR /mysite
# COPY requirements.txt /mysite/
# RUN pip install -r requirements.txt
# COPY ./mysite /mysite 
# COPY ./entrypoint.sh /
# ENTRYPOINT ["sh", "/entrypoint.sh"]
FROM python:3.8.3-slim-buster

RUN pip install --upgrade pip

COPY ./requirements.txt .
RUN pip install -r requirements.txt

COPY ./django-simple-ecommerce /django-simple-ecommerce

WORKDIR /django-simple-ecommerce

COPY ./entrypoint.sh /
ENTRYPOINT ["sh", "/entrypoint.sh"]