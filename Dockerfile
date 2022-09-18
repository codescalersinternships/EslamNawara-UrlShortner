FROM python:3.10

WORKDIR /

COPY . . 

RUN pip install -r requirements.txt

EXPOSE 8000

ENV HOST=0.0.0.0

CMD [ "./manage.py", "runserver" ]
