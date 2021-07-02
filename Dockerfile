FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1

# Install dependencies
COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt


# Setup directory structure
RUN mkdir /app
WORKDIR /app
VOLUME [ "/app" ]

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000"]
# RUN adduser -D user
# USER user