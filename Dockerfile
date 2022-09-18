FROM python:3.10

WORKDIR /urlshortener

COPY . /url-shortener

RUN pip install -r requirements.txt

EXPOSE 8000

CMD [ "./manage.py", "runserver" ]
