# Pull base image
FROM python:3.9

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONBUFFERED 1

# set work directory
WORKDIR /djangoForProf

#install dependencies
COPY Pipfile Pipfile.lock /djangoForProf/
RUN pip install pipenv && pipenv install --system

#copy project
COPY . /djangoForProf/